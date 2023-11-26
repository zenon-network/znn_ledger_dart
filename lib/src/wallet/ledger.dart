import 'dart:typed_data';
import 'package:znn_sdk_dart/znn_sdk_dart.dart';
import 'package:znn_ledger_dart/znn_ledger_dart.dart';

class LedgerWallet implements Wallet {
  static const appName = 'Zenon';

  static Future<LedgerWallet> connect(
      String path, LedgerWalletOptions options) async {
    final ledgerTransport = await LedgerTransport.create(
      path: path,
      appName: appName,
    );
    return LedgerWallet(transport: ledgerTransport, options: options);
  }

  final LedgerTransport _transport;
  final LedgerWalletOptions _options;

  LedgerWallet(
      {required LedgerTransport transport,
      required LedgerWalletOptions options})
      : _transport = transport,
        _options = options;

  @override
  Future<WalletAccount> getAccount([int accountIndex = 0]) async {
    return LedgerWalletAccount(wallet: this, accountIndex: accountIndex);
  }

  Future<Version> getAppVersion() async {
    return await _transport.getAppVersion();
  }

  Future<List<int>> getPublicKey(int accountIndex, [bool? confirm]) async {
    return await _transport.getPublicKey(accountIndex,
        confirm: confirm ?? _options.confirmAddressByDefault);
  }

  Future<List<int>> signTx(
      int accountIndex, AccountBlockTemplate transaction) async {
    var txData = BlockUtils.getTransactionBytes(transaction);
    var signature = await _transport.signTx(
        accountIndex: accountIndex, transaction: Uint8List.fromList(txData));
    return signature;
  }
}
