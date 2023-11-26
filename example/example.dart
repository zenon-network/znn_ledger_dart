import 'package:znn_sdk_dart/znn_sdk_dart.dart';
import 'package:znn_ledger_dart/znn_ledger_dart.dart';

void main() async {
  chainId = 321;
  final Zenon znnClient = Zenon();

  print('Connecting to local node...');

  if (await znnClient.wsClient
      .initialize('ws://127.0.0.1:35998', retry: false)) {
    var manager = new LedgerWalletManager();

    var walletList = await manager.getWalletDefinitions();

    if (walletList.isNotEmpty) {
      try {
        // Use first wallet available
        var walletInfo = walletList[0];
        print('Opening wallet ${walletInfo.walletName}');
        var wallet = await manager.getWallet(
            walletInfo, LedgerWalletOptions(confirmAddressByDefault: false));

        // Get primary wallet account
        var accountIndex = 0;
        print('Using wallet account $accountIndex');
        var account =
            await wallet.getAccount(accountIndex) as LedgerWalletAccount;

        // Get address and confirm with ledger
        var address = await account.getAddress(true);
        print('Address: $address');

        // Init default wallet account
        znnClient.defaultKeyPair = account;

        // Create transaction
        var toAddress =
            Address.parse('z1qqjnwjjpnue8xmmpanz6csze6tcmtzzdtfsww7');
        var amount = BigInt.from(100000000);
        var tokenStandard = znnZts;
        var block = AccountBlockTemplate.send(toAddress, tokenStandard, amount);

        // Send tx
        await znnClient.send(block);
      } on LedgerError catch (e) {
        print('Ledger error code: ${e}');
      }
    } else {
      print('No wallets found');
    }
    print('Closing connection...');

    znnClient.wsClient.stop();
  } else {
    print('Failed to connect to local node');
  }

  print('Done');
}
