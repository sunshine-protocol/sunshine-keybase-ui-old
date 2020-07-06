import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class IdentitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Identities'),
      body: _IdentitesScreenBody(),
    );
  }
}

class _IdentitesScreenBody extends StatelessWidget {
  const _IdentitesScreenBody({
    Key key,
  }) : super(key: key);
  final String _githubIdentity = 'shekohex@github';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListCell(
          title: 'Github',
          trailing: SizedBox(
            width: 120.w.toDouble(),
            child: HintText(_githubIdentity),
          ),
          onTap: () {
            _showActions(context);
          },
        ),
      ],
    );
  }

  void _showActions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          height: 180.h.toDouble(),
          child: Column(
            children: [
              SizedBox(height: 5.h.toDouble()),
              Divider(
                thickness: 2,
                indent: ScreenUtil.screenWidth / 8,
                endIndent: ScreenUtil.screenWidth / 8,
                color: Colors.black54,
              ),
              SizedBox(height: 20.h.toDouble()),
              if (_githubIdentity != null) ...[
                Button(
                  text: 'View Proof',
                  variant: ButtonVariant.success,
                  onPressed: ExtendedNavigator.root.pop,
                ),
                SizedBox(height: 10.h.toDouble()),
                Button(
                  text: 'Revoke',
                  variant: ButtonVariant.danger,
                  onPressed: () {
                    ExtendedNavigator.root
                      ..pop()
                      ..pushRevokeDeviceScreen();
                  },
                )
              ] else ...[
                Button(
                  text: 'Proof',
                  variant: ButtonVariant.primary,
                  onPressed: ExtendedNavigator.root.pop,
                ),
                SizedBox(height: 10.h.toDouble()),
                Button(
                  text: 'Cancel',
                  variant: ButtonVariant.secondry,
                  onPressed: () {
                    ExtendedNavigator.root
                      ..pop()
                      ..pushRevokeDeviceScreen();
                  },
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class IdentityProveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Identities'),
      body: Column(
        children: const [],
      ),
    );
  }
}
