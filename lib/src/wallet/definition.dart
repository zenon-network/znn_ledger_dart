import 'package:znn_ledger_dart/src/transport/transport.dart';
import 'package:znn_sdk_dart/znn_sdk_dart.dart';

class LedgerWalletDefinition implements WalletDefinition {
  final LedgerDevice _device;

  LedgerWalletDefinition({required LedgerDevice device}) : _device = device;

  @override
  String get walletId {
    return _device.path;
  }

  @override
  String get walletName {
    return _device.name;
  }
}