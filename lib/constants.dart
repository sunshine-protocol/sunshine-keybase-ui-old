import 'dart:ui';

import 'package:flutter/material.dart';

class Routes {
  static const blank = '/dev/null';
  static const intro = '/';
  static const generateAccount = '/account/generate';
  static const accountPharse = '/account/phrase';
  static const accountPharseConfirmation = '/account/phrase/confirmation';
  static const recoverAccount = '/account/recover';
  static const unloackAccount = '/account/unlock';

  static const main = '/main';
}

class AppColors {
  static const mainBackground = Colors.white;
  static const primary = Color(0xFFA761AF);
  static const secondry = Color(0xFF7F8F82);
  static const success = Color(0xFF61AF70);
  static const danger = Color(0xFFEE3A3A);
  static const disabled = Color(0xFFB7B7B7);
}

class SharedPrefKeys {
  static const firstName = 'account:firstName';
  static const lastName = 'account:lastName';
}
