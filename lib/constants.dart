import 'dart:ui';

import 'package:flutter/material.dart';

class Routes {
  // a blank screen a place where every thing is in white
  static const blank = '/dev/null';
  static const intro = '/';

  static const generateAccountStepOne = '/account/generate/step/1';
  static const generateAccountStepTwo = '/account/generate/step/2';
  static const generateAccountDone = '/account/generate/done';

  static const recoverAccountStepOne = '/account/recover/step/1';
  static const recoverAccountStepTwo = '/account/recover/step/2';
  static const recoverAccountDone = '/account/recover/done';

  static const main = '/main';

  static const walletTransfer = '/wallet/transfer';
  static const walletTransferConfirmation = '/wallet/transfer/confirmation';
  static const walletTransferDone = '/wallet/transfer/done';

  static const account = '/account';
  static const devices = '/devices';
  static const identities = '/identities';

  static const about = '/about';
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
