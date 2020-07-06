import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class DevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Devices'),
      body: _DeviceScreenBody(),
    );
  }
}

class _DeviceScreenBody extends StatelessWidget {
  const _DeviceScreenBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            const HeaderText('Your Devices'),
            SizedBox(height: 15.w.toDouble()),
            const HintText('Tip: click on any device to see more actions'),
            SizedBox(height: 10.w.toDouble()),
            ListCell(
              title: '5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh',
              trailing: SizedBox(
                width: 120.w.toDouble(),
                child: const HintText('Current Device'),
              ),
              onTap: () {
                _showActions(context);
              },
            ),
            ListCell(
              title: '5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh',
              trailing: SizedBox(
                width: 120.w.toDouble(),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.h.toDouble()),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Button(
              text: 'Create a Paper Key',
              onPressed: () {
                ExtendedNavigator.root.pushPaperKeyScreen();
              },
            ),
          ),
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
              Button(
                text: 'Revoke',
                variant: ButtonVariant.danger,
                onPressed: () {
                  ExtendedNavigator.root
                    ..pop()
                    ..pushRevokeDeviceScreen();
                },
              ),
              SizedBox(height: 10.h.toDouble()),
              Button(
                text: 'Cancel',
                variant: ButtonVariant.secondry,
                onPressed: ExtendedNavigator.root.pop,
              ),
            ],
          ),
        );
      },
    );
  }
}

class RevokeDeviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Devices'),
      body: Column(
        children: [
          SizedBox(height: 50.h.toDouble()),
          const HeaderText('Your are about to revoke'),
          SizedBox(height: 20.h.toDouble()),
          const Input(
            hintText: '5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh',
            readOnly: true,
          ),
          SizedBox(height: 40.h.toDouble()),
          const HeaderText('Are you sure?'),
          SizedBox(height: 20.h.toDouble()),
          const HintText('There is no way to reverse this'),
          const Expanded(child: SizedBox()),
          SizedBox(height: 20.h.toDouble()),
          Button(
            text: 'Yes, Revoke',
            variant: ButtonVariant.danger,
            onPressed: () {
              _revokeDevice(context);
            },
          ),
          SizedBox(height: 10.h.toDouble()),
          Button(
            text: 'No, go back',
            variant: ButtonVariant.secondry,
            onPressed: ExtendedNavigator.root.pop,
          ),
          SizedBox(height: 15.h.toDouble()),
        ],
      ),
    );
  }

  void _revokeDevice(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const LoadingView(
        loadingMessage: 'We are creating account for you',
      ),
    );
    Future.delayed(
      const Duration(seconds: 2),
      () {
        ExtendedNavigator.root
          ..popPages(1)
          ..pushRevokeDeviceDoneScreen();
      },
    );
  }
}

class RevokeDeviceDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 120.h.toDouble()),
          const HeaderText('You successfully revoked'),
          SizedBox(height: 20.h.toDouble()),
          const Input(
            hintText: '5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh',
            readOnly: true,
          ),
          SizedBox(height: 20.h.toDouble()),
          const HeaderText('from your devices'),
          SizedBox(height: 40.h.toDouble()),
          const SunshineLogo(),
          SizedBox(height: 40.h.toDouble()),
          const HintText('you now have only 1 device(s)'),
          const Expanded(child: SizedBox()),
          Button(
            text: 'Finish',
            variant: ButtonVariant.primary,
            onPressed: () {
              ExtendedNavigator.root
                ..popPages(2)
                ..pushDevicesScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble()),
        ],
      ),
    );
  }
}
