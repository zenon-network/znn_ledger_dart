# Ledger Wallet for Zenon Dart SDK

The Ledger Wallet offers a cross platform client implementation for the [Zenon Ledger App](https://github.com/HyperCore-One/ledger-app-zenon). Supported platforms are Linux, OSX and Windows.

## Setup

To start using this library, edit the `pubspec.yaml` by adding the following lines:

```yaml
dependencies:
  znn_ledger_dart: ^latest_version
```

> Notice: `znn_ledger_dart` requires Dart version `>=2.17.0`

You can also use a specific GitHub tag or branch:

```yaml
dependencies:
  znn_ledger_dart:
    git:
      url: git://github.com/zenon-network/znn_ledger_dart.git
      ref: <tag_or_branch>
```

## Linux

Note that on Linux you will need to install an udev rule file with your application for unprivileged users to be able to access HID devices with hidapi. 
Refer to the [README](udev/) file in the udev directory for an example.

## Code Example

You can use the `LedgerWallet` class to connect to a Ledger Nano S/X/SP and Stax device:

```dart
import 'package:znn_ledger_dart/znn_ledger_dart.dart';

void main() async {
    // Use ledger manager
    var manager = LedgerWalletManager();

    // Get all available wallets
    var walletList = await manager.getWalletDefinitions();

    if (walletList.isNotEmpty) {
        try {
            // Use first wallet available
            var wallet = await manager.getWallet(walletList[0], null);

            // Get primary wallet account
            var account = await wallet.getAccount(0) as LedgerWalletAccount;
            
            // Get address
            var address = await account.getAddress();
            ...
        } on LedgerError catch (e) {
            print('Ledger error code: ${e}');
        }
    } else {
        print('No wallets found');
    }
}
```

## Contributing

Please check [CONTRIBUTING](CONTRIBUTING.md) for more details.

## License

The MIT License (MIT). Please check [LICENSE](LICENSE) for more information.