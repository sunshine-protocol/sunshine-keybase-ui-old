import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class HintText extends StatelessWidget {
  const HintText(
    String text, {
    TextOverflow overflow = TextOverflow.ellipsis,
    int maxLines = 1,
    bool softWrap = false,
  })  : _text = text,
        _overflow = overflow,
        _maxLines = maxLines,
        _softWrap = softWrap;
  final String _text;
  final TextOverflow _overflow;
  final int _maxLines;
  final bool _softWrap;
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
      overflow: _overflow,
      maxLines: _maxLines,
      softWrap: _softWrap,
    );
  }
}
