import 'package:znn_ledger_dart/src/transport/transport.dart';
import 'package:znn_sdk_dart/znn_sdk_dart.dart';

import 'definition.dart';
import 'ledger.dart';

class LedgerWalletOptions implements WalletOptions {
  final bool confirmAddressByDefault;
  LedgerWalletOptions({this.confirmAddressByDefault = false});
}

class LedgerWalletManager implements WalletManager {
  final _wallets = new Map<String, LedgerWallet>();

  final LedgerWalletOptions defaultWalletOptions =
      LedgerWalletOptions(confirmAddressByDefault: false);

  @override
  Future<List<WalletDefinition>> getWalletDefinitions() async {
    var devices = await LedgerTransport.getLedgerDevices();
    return devices
        .map((device) => LedgerWalletDefinition(device: device))
        .toList();
  }

  @override
  Future<Wallet> getWallet(WalletDefinition walletDefinition,
      [WalletOptions? walletOptions]) async {
    if (walletDefinition is! LedgerWalletDefinition) {
      throw Exception(
          'Unsupported wallet definition ${walletDefinition.runtimeType.toString()}.');
    }
    if (walletOptions == null) walletOptions = defaultWalletOptions;
    if (!(walletOptions is LedgerWalletOptions)) {
      throw Exception(
          "Unsupported wallet options ${walletOptions.runtimeType}.");
    }
    
    if (_wallets.containsKey(walletDefinition.walletId)) {
      await _wallets.remove(walletDefinition.walletId)!.disconnect();
    }
    final wallet =
        await LedgerWallet.connect(walletDefinition.walletId, walletOptions);
    _wallets[walletDefinition.walletId] = wallet;
    return wallet;
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
