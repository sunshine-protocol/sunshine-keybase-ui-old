import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({String title, double elevation = 0})
      : _title = title,
        _elevation = elevation;

  final String _title;
  final double _elevation;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        _title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: _elevation,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
