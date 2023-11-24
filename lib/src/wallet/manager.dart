import 'package:znn_ledger_dart/src/transport/transport.dart';
import 'package:znn_sdk_dart/znn_sdk_dart.dart';

import 'definition.dart';
import 'ledger.dart';

class LedgerWalletManager implements WalletManager {
  @override
  Future<List<WalletDefinition>> getWalletDefinitions() async {
    var devices = await LedgerTransport.getLedgerDevices();
    return devices
        .map((device) => LedgerWalletDefinition(device: device))
        .toList();
  }

  @override
  Future<Wallet> getWallet(
      WalletDefinition walletDefinition, WalletOptions? walletOptions) async {
    if (walletDefinition is! LedgerWalletDefinition) {
      throw Exception(
          'Unsupported wallet definition ${walletDefinition.runtimeType.toString()}.');
    }
    return LedgerWallet.connect(walletDefinition.walletId);
  }

  @override
  Future<bool> supportsWallet(WalletDefinition walletDefinition) async {
    if (walletDefinition is LedgerWalletDefinition) {
      return (await getWalletDefinitions())
          .any((x) => x.walletId == walletDefinition.walletId);
    }
    return false;
  }
}