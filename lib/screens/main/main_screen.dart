import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          'Main',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27.ssp.toDouble(),
          ),
        ),
        primary: true,
        titleSpacing: 18.w.toDouble(),
        actions: [const CircleAvatar(), SizedBox(width: 22.w.toDouble())],
      ),
      body: Container(),
    );
  }
}
