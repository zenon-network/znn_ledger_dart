import 'package:znn_sdk_dart/znn_sdk_dart.dart';

import 'ledger.dart';

class LedgerWalletAccount implements WalletAccount {
  final LedgerWallet _ledgerWallet;
  final int _accountIndex;

  List<int>? publicKey;
  Address? _address;

  LedgerWalletAccount({required LedgerWallet wallet, int accountIndex = 0})
      : _ledgerWallet = wallet,
        _accountIndex = accountIndex;

  @override
  Future<Address> getAddress([bool display = false]) async {
    _address ??= Address.fromPublicKey(await getPublicKey(display));
    return _address!;
  }

  @override
  Future<List<int>> getPublicKey([bool display = false]) async {
    publicKey ??= await _ledgerWallet.getPublicKey(_accountIndex, display);
    return publicKey!;
  }

  @override
  Future<List<int>> sign(List<int> message) async {
    throw UnsupportedError('Signing an arbitrary message is not supported.');
  }

  @override
  Future<List<int>> signTx(AccountBlockTemplate transaction) async {
    return _ledgerWallet.signTx(_accountIndex, transaction);
  }
}