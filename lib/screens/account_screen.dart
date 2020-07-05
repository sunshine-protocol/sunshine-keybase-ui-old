import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Account'),
      body: ListView(
        children: [
          const HeaderText('Your Information'),
          SizedBox(height: 15.w.toDouble()),
          const HintText('Tip: double click to copy to clipboard'),
          SizedBox(height: 10.w.toDouble()),
          ListCell(
            title: 'UID',
            trailing: SizedBox(
              width: 120.w.toDouble(),
              child: const HintText('1001101'),
            ),
          ),
          ListCell(
            title: 'Device ID',
            trailing: SizedBox(
              width: 120.w.toDouble(),
              child: const HintText('5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh'),
            ),
          ),
          ListCell(
            title: 'Github',
            trailing: SizedBox(
              width: 120.w.toDouble(),
              child: const HintText('@shekohex'),
            ),
          ),
          SizedBox(height: 20.w.toDouble()),
          const HeaderText('Profile'),
          SizedBox(height: 10.w.toDouble()),
          ListCell(
            title: 'Devices',
            trailing: Icon(Icons.chevron_right, size: 40),
          ),
          ListCell(
            title: 'Identities',
            trailing: Icon(Icons.chevron_right, size: 40),
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
