import 'dart:ffi';
import 'dart:io';

import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;
import 'package:znn_sdk_dart/znn_sdk_dart.dart';

import 'ledger_ffi_bindings.dart';

var invalidLedgerLibPathException =
    ZnnSdkException('Library libledger_ffi could not be found');

class LedgerFfi {
  static LedgerFfi? _instance;

  final LedgerFfiBindings? _bindings;

  LedgerFfi._()
      : _bindings = LedgerFfiBindings(_dlOpenPlatformSpecific())
          ..ll_store_dart_post_cobject(NativeApi.postCObject.cast<Void>());

  static LedgerFfi get instance => _instance ??= LedgerFfi._();

  LedgerFfiBindings get bindings {
    if (_bindings != null) {
      return _bindings!;
    } else {
      throw Exception("Library isn't loaded");
    }
  }

  static DynamicLibrary _dlOpenPlatformSpecific() {
    var insideSdk = path.join('znn_ledger_dart', 'lib', 'src', 'ledger', 'blobs');
    var currentPathListParts = path.split(Directory.current.path);
    currentPathListParts.removeLast();
    var executablePathListParts = path.split(Platform.resolvedExecutable);
    executablePathListParts.removeLast();
    var possiblePaths = List<String>.empty(growable: true);
    possiblePaths.add(Directory.current.path);
    possiblePaths.add(path.joinAll(executablePathListParts));
    executablePathListParts.removeLast();
    possiblePaths
        .add(path.join(path.joinAll(executablePathListParts), 'Resources'));
    possiblePaths.add(path.join(path.joinAll(currentPathListParts), insideSdk));

    var libraryPath = '';
    var found = false;

    for (var currentPath in possiblePaths) {
      libraryPath = path.join(currentPath, 'libledger_ffi.so');

      if (Platform.isMacOS) {
        libraryPath = path.join(currentPath, 'libledger_ffi.dylib');
      }
      if (Platform.isWindows) {
        libraryPath = path.join(currentPath, 'libledger_ffi.dll');
      }

      var libFile = File(libraryPath);

      if (libFile.existsSync()) {
        found = true;
        break;
      }
    }

    Logger('Ledger')
        .log(Level.INFO, 'Loading libledger_ffi from path $libraryPath');

    if (!found) {
      Logger('Ledger').log(Level.SEVERE, 'Could not load libledger_ffi');
      throw invalidLedgerLibPathException;
    }

    // Open the dynamic library
    return DynamicLibrary.open(libraryPath);
  }
}
