import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';

import 'package:znn_ledger_dart/src/ledger/ledger_ffi.dart';
import 'package:znn_ledger_dart/src/model/execution_result.dart';

dynamic executeSync(Pointer<Char> Function() function) {
  final ptr = function();
  final string = ptr.cast<Utf8>().toDartString();

  LedgerFfi.instance.bindings.ll_free_cstring(ptr);

  final json = jsonDecode(string) as Map<String, dynamic>;
  final executionResult = ExecutionResult.fromJson(json);

  return executionResult.handle();
}

Future<dynamic> executeAsync(void Function(int port) function) async {
  final receivePort = ReceivePort();
  final completer = Completer<dynamic>();
  final st = StackTrace.current;

  receivePort.cast<String>().listen((data) {
    final ptr = toPtrFromAddress(data).cast<Char>();
    final string = ptr.cast<Utf8>().toDartString();

    LedgerFfi.instance.bindings.ll_free_cstring(ptr);

    final json = jsonDecode(string) as Map<String, dynamic>;
    final executionResult = ExecutionResult.fromJson(json);

    try {
      final result = executionResult.handle();
      completer.complete(result);
    } catch (err) {
      completer.completeError(err, st);
    } finally {
      receivePort.close();
    }
  });

  function(receivePort.sendPort.nativePort);

  return completer.future;
}

String cStringToDart(int address) {
  final ptr = Pointer.fromAddress(address).cast<Char>();

  final string = ptr.cast<Utf8>().toDartString();

  LedgerFfi.instance.bindings.ll_free_cstring(ptr);

  return string;
}

String? optionalCStringToDart(int address) {
  if (Pointer.fromAddress(address) == nullptr) {
    return null;
  } else {
    return cStringToDart(address);
  }
}

Pointer<Void> toPtrFromAddress(String address) =>
    LedgerFfi.instance.bindings
        .ll_cstring_to_void_ptr(address.toNativeUtf8().cast<Char>());
