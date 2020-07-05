import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class HintText extends StatelessWidget {
  const HintText(String text) : _text = text;
  final String _text;
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: 16.ssp.toDouble(),
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
