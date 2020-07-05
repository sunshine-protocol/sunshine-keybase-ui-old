import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class DevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Devices'),
      body: Stack(
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
      ),
    );
  }
}
