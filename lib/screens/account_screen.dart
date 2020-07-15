import 'package:flutter/material.dart';
import 'package:identity/identity.dart';
import 'package:identity/models/models.dart';

class AccountScreen extends StatelessWidget {
  final _accountService = GetIt.I.get<AccountService>();
  final _walletService = GetIt.I.get<WalletService>();
  @override
  Widget build(BuildContext context) {
    final f = _accountService.currentAccount();
    return Scaffold(
      appBar: const MyAppBar(title: 'Account', elevation: 1),
      body: ListView(
        children: [
          const HeaderText('Your Information'),
          SizedBox(height: 15.w.toDouble()),
          const HintText('Tip: double tap to copy to clipboard'),
          SizedBox(height: 10.w.toDouble()),
          ListCell(
            title: 'UID',
            trailing: SizedBox(
              width: 60.w.toDouble(),
              child: FutureBuilder<Account>(
                initialData: const Account(uid: '...'),
                future: f,
                builder: (context, snapshot) => HintText(
                  snapshot.data?.uid ?? 'N/A',
                ),
              ),
            ),
          ),
          ListCell(
            title: 'Device ID',
            trailing: SizedBox(
              width: 120.w.toDouble(),
              child: FutureBuilder<Account>(
                initialData: const Account(devices: [
                  Device(
                    id: '...',
                    currentDevice: true,
                  )
                ]),
                future: f,
                builder: (context, snapshot) => HintText(
                  snapshot.data?.currentDevice?.id ?? 'N/A',
                ),
              ),
            ),
          ),
          ListCell(
            title: 'Balance',
            trailing: SizedBox(
              width: 120.w.toDouble(),
              child: FutureBuilder<String>(
                initialData: '...',
                future: _walletService.balance(),
                builder: (context, snapshot) => HintText(
                  '☼${snapshot.data}' ?? 'N/A',
                ),
              ),
            ),
          ),
          SizedBox(height: 20.w.toDouble()),
          const HeaderText('Profile'),
          SizedBox(height: 10.w.toDouble()),
          ListCell(
            title: 'Devices',
            trailing: Icon(Icons.chevron_right, size: 40),
            onTap: () {
              ExtendedNavigator.root.pushDevicesScreen();
            },
          ),
          ListCell(
            title: 'Identities',
            trailing: Icon(Icons.chevron_right, size: 40),
            onTap: () {
              ExtendedNavigator.root.pushIdentitiesScreen();
            },
          ),
          SizedBox(height: 20.w.toDouble()),
          const HeaderText('Legal'),
          SizedBox(height: 10.w.toDouble()),
          ListCell(
            title: 'About',
            trailing: Icon(Icons.chevron_right, size: 40),
          ),
        ],
      ),
    );
  }
}
