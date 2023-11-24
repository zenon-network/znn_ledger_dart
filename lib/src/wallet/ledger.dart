import 'dart:typed_data';
import 'package:znn_sdk_dart/znn_sdk_dart.dart';
import 'package:znn_ledger_dart/src/transport/transport.dart';

import 'account.dart';

class LedgerWallet implements Wallet {
  static const appName = 'Zenon';

  static Future<LedgerWallet> connect(String path) async {
    final ledgerTransport = await LedgerTransport.create(
      path: path,
      appName: appName,
    );
    return LedgerWallet(transport: ledgerTransport);
  }

  final LedgerTransport _transport;

  LedgerWallet({required LedgerTransport transport}) : _transport = transport;

  @override
  Future<WalletAccount> getAccount([int accountIndex = 0]) async {
    return LedgerWalletAccount(wallet: this, accountIndex: accountIndex);
  }

  Future<Version> getAppVersion() async {
    return await _transport.getAppVersion();
  }

  Future<List<int>> getPublicKey(int accountIndex, bool display) async {
    var pubKey = await _transport.getPublicKey(accountIndex, verify: display);
    return pubKey;
  }

  Future<List<int>> signTx(
      int accountIndex, AccountBlockTemplate transaction) async {
    var txData = BlockUtils.getTransactionBytes(transaction);
    var signature = await _transport.signTx(
        accountIndex: accountIndex, transaction: Uint8List.fromList(txData));
    return signature;
  }
}