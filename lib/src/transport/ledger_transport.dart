import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'package:znn_ledger_dart/src/ledger/ledger.dart';
import 'package:znn_ledger_dart/src/extension/uint_extension.dart';
import 'package:znn_ledger_dart/src/utils/ffi_utils.dart';
import 'package:znn_ledger_dart/src/transport/ledger_device.dart';
import 'package:znn_ledger_dart/src/transport/ledger_error.dart';
import 'package:znn_ledger_dart/src/transport/ledger_response.dart';
import 'package:znn_ledger_dart/src/transport/status_word.dart';
import 'package:znn_ledger_dart/src/transport/version.dart';

final _nativeFinalizer = NativeFinalizer(
    LedgerFfi.instance.bindings.addresses.ll_ledger_transport_free_ptr);

class LedgerTransport implements Finalizable {
  static const _cla = 0xe0;
  static const _insGetVer =
      0x03; // Get application version as MAJOR, MINOR, PATCH
  static const _insGetAn = 0x04; // Get ASCII encoded application name
  static const _insGetPk = 0x05; // Get public key given BIP32 path
  static const _insSignTx =
      0x06; // Sign transaction given BIP32 path and raw transaction
  static const _chunkSize = 0xFF;

  late Pointer<Void> _ptr;

  @override
  LedgerTransport(
    String path,
  ) {
    final result = executeSync(
      () => LedgerFfi.instance.bindings
          .ll_create_ledger_transport(path.toNativeUtf8().cast<Char>()),
    );

    _ptr = toPtrFromAddress(result as String);

    _nativeFinalizer.attach(this, _ptr);
  }

  static Future<LedgerTransport> create({
    required String path,
    required String appName,
  }) async {
    final instance = LedgerTransport(path);
    try {
      final name = await instance.getAppName();
      if (name != appName) {
        throw const LedgerError.responseError(
            statusWord: StatusWord.appIsNotOpen);
      }
      return instance;
    } on LedgerError {
      rethrow;
    } catch (err) {
      throw LedgerError.connectionError(origMessage: err.toString());
    }
  }

  static Future<List<LedgerDevice>> getLedgerDevices() async {
    final result = await executeAsync(
      (port) => LedgerFfi.instance.bindings.ll_get_ledger_devices(
        port,
      ),
    );
    final string = cStringToDart(result);
    final json = jsonDecode(string) as List<dynamic>;

    return json
        .map((e) => LedgerDevice.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Version> getAppVersion() async {
    final keyIndexRawValue = jsonEncode([]);

    return _executeLedgerQuery(
      () async {
        final result = await executeAsync(
          (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
            port,
            _ptr,
            _cla, // CLA
            _insGetVer, // INS
            0x00, // P1
            0x00, // P2
            keyIndexRawValue.toNativeUtf8().cast<Char>(), // CData
          ),
        );
        final string = cStringToDart(result);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final response = LedgerResponse.fromJson(json);

        if (response.statusWord != StatusWord.success) {
          throw LedgerError.responseError(statusWord: response.statusWord);
        }

        final major = response.data[0];
        final minor = response.data[1];
        final patch = response.data[2];

        return Version(
            versionMajor: major, versionMinor: minor, versionPatch: patch);
      },
    );
  }

  Future<String> getAppName() async {
    final keyIndexRawValue = jsonEncode([]);

    return _executeLedgerQuery(
      () async {
        final result = await executeAsync(
          (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
            port,
            _ptr,
            _cla, // CLA
            _insGetAn, // INS
            0x00, // P1
            0x00, // P2
            keyIndexRawValue.toNativeUtf8().cast<Char>(), // CData
          ),
        );
        final string = cStringToDart(result);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final response = LedgerResponse.fromJson(json);

        if (response.statusWord != StatusWord.success) {
          throw LedgerError.responseError(statusWord: response.statusWord);
        }

        final nameBytes = response.data.toList();
        final name = String.fromCharCodes(nameBytes);

        return name;
      },
    );
  }

  Future<List<int>> getPublicKey(int accountIndex,
      {bool confirm = false}) async {
    final bip32PathBytes = Uint8List.fromList([
      0x03, // PATH LENGTH
      ...(44 | (1 << 31)).toBytes(), // 44'
      ...(73404 | (1 << 31)).toBytes(), // 73404'
      ...(accountIndex | (1 << 31)).toBytes(), // Account index
    ]);

    return _executeLedgerQuery(
      () async {
        final result = await executeAsync(
          (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
            port,
            _ptr,
            _cla, // CLA
            _insGetPk, // INS
            confirm ? 0x01 : 0x00, // P1
            0x00, // P2
            jsonEncode(bip32PathBytes).toNativeUtf8().cast<Char>(),
          ),
        );
        final string = cStringToDart(result);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final response = LedgerResponse.fromJson(json);

        if (response.statusWord != StatusWord.success) {
          throw LedgerError.responseError(statusWord: response.statusWord);
        }

        final key = response.data;

        return key.isNotEmpty
            ? key.skip(1).take(key[0]).toList()
            : List<int>.from([]);
      },
    );
  }

  Future<List<int>> signTx({
    required int accountIndex,
    required Uint8List transaction,
  }) async {
    final bip32PathBytes = Uint8List.fromList([
      0x03, // PATH LENGTH
      ...(44 | (1 << 31)).toBytes(), // 44'
      ...(73404 | (1 << 31)).toBytes(), // 73404'
      ...(accountIndex | (1 << 31)).toBytes(), // Account index
    ]);

    return _executeLedgerQuery(
      () async {
        var bytesRemaining = transaction.length;
        var offset = 0;
        var index = 0;

        await executeAsync(
          (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
            port,
            _ptr,
            _cla, // CLA
            _insSignTx, // INS
            index, // P1
            0x80, // P2
            jsonEncode(bip32PathBytes).toNativeUtf8().cast<Char>(),
          ),
        );

        index++;
        var chunks = bytesRemaining ~/ _chunkSize;

        while (chunks > 0) {
          final chunkBytes =
              transaction.getRange(offset, offset + _chunkSize).toList();

          await executeAsync(
            (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
              port,
              _ptr,
              _cla, // CLA
              _insSignTx, // INS
              index, // P1
              0x80, // P2
              jsonEncode(chunkBytes).toNativeUtf8().cast<Char>(),
            ),
          );

          bytesRemaining -= _chunkSize;
          offset += _chunkSize;
          index++;
          chunks--;
        }

        final lastChunkBytes =
            transaction.getRange(offset, offset + bytesRemaining).toList();

        final result = await executeAsync(
          (port) => LedgerFfi.instance.bindings.ll_ledger_exchange(
            port,
            _ptr,
            _cla, // CLA
            _insSignTx, // INS
            index, // P1
            0x00, // P2
            jsonEncode(lastChunkBytes).toNativeUtf8().cast<Char>(),
          ),
        );

        final string = cStringToDart(result);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final response = LedgerResponse.fromJson(json);

        if (response.statusWord != StatusWord.success) {
          throw LedgerError.responseError(statusWord: response.statusWord);
        }
        final signature = response.data;

        return signature.isNotEmpty
            ? signature.skip(1).take(signature[0]).toList()
            : List<int>.from([]);
      },
    );
  }

  Future<T> _executeLedgerQuery<T>(Future<T> Function() query) async {
    try {
      return await query();
    } on LedgerError {
      rethrow;
    } catch (err) {
      throw const LedgerError.responseError(
          statusWord: StatusWord.unknownError);
    }
  }
}
