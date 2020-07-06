// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:identity/screens/blank_screen.dart';
import 'package:identity/screens/intro_screen.dart';
import 'package:identity/screens/generate_account_screen.dart';
import 'package:identity/screens/recover_account_screen.dart';
import 'package:identity/screens/main_screen.dart';
import 'package:identity/router/guards/has_account_guard.dart';
import 'package:identity/screens/wallet_transfer_screen.dart';
import 'package:identity/screens/account_screen.dart';
import 'package:identity/screens/devices_screen.dart';
import 'package:identity/screens/paper_key_screen.dart';
import 'package:identity/screens/identities_screen.dart';

class Routes {
  static const String blankScreen = '/blank-screen';
  static const String introScreen = '/';
  static const String generateAccountStepOneScreen =
      '/generate-account-step-one-screen';
  static const String generateAccountStepTwoScreen =
      '/generate-account-step-two-screen';
  static const String generateAccountDoneScreen =
      '/generate-account-done-screen';
  static const String recoverAccountStepOneScreen =
      '/recover-account-step-one-screen';
  static const String recoverAccountStepTwoScreen =
      '/recover-account-step-two-screen';
  static const String recoverAccountDoneScreen = '/recover-account-done-screen';
  static const String mainScreen = '/main-screen';
  static const String walletTransferScreen = '/wallet-transfer-screen';
  static const String walletTransferConfirmationScreen =
      '/wallet-transfer-confirmation-screen';
  static const String walletTransferDoneScreen = '/wallet-transfer-done-screen';
  static const String accountScreen = '/account-screen';
  static const String devicesScreen = '/devices-screen';
  static const String paperKeyScreen = '/paper-key-screen';
  static const String revokeDeviceScreen = '/revoke-device-screen';
  static const String revokeDeviceDoneScreen = '/revoke-device-done-screen';
  static const String identitiesScreen = '/identities-screen';
  static const String proveIdentityScreen = '/prove-identity-screen';
  static const String proveIdentityInstractionsScreen =
      '/prove-identity-instractions-screen';
  static const String proveIdentityDone = '/prove-identity-done';
  static const String revokeIdentityScreen = '/revoke-identity-screen';
  static const String revokeIdentityDoneScreen = '/revoke-identity-done-screen';
  static const all = <String>{
    blankScreen,
    introScreen,
    generateAccountStepOneScreen,
    generateAccountStepTwoScreen,
    generateAccountDoneScreen,
    recoverAccountStepOneScreen,
    recoverAccountStepTwoScreen,
    recoverAccountDoneScreen,
    mainScreen,
    walletTransferScreen,
    walletTransferConfirmationScreen,
    walletTransferDoneScreen,
    accountScreen,
    devicesScreen,
    paperKeyScreen,
    revokeDeviceScreen,
    revokeDeviceDoneScreen,
    identitiesScreen,
    proveIdentityScreen,
    proveIdentityInstractionsScreen,
    proveIdentityDone,
    revokeIdentityScreen,
    revokeIdentityDoneScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.blankScreen, page: BlankScreen),
    RouteDef(Routes.introScreen, page: IntroScreen),
    RouteDef(Routes.generateAccountStepOneScreen,
        page: GenerateAccountStepOneScreen),
    RouteDef(Routes.generateAccountStepTwoScreen,
        page: GenerateAccountStepTwoScreen),
    RouteDef(Routes.generateAccountDoneScreen, page: GenerateAccountDoneScreen),
    RouteDef(Routes.recoverAccountStepOneScreen,
        page: RecoverAccountStepOneScreen),
    RouteDef(Routes.recoverAccountStepTwoScreen,
        page: RecoverAccountStepTwoScreen),
    RouteDef(Routes.recoverAccountDoneScreen, page: RecoverAccountDoneScreen),
    RouteDef(Routes.mainScreen, page: MainScreen, guards: [HasAccountGuard]),
    RouteDef(Routes.walletTransferScreen, page: WalletTransferScreen),
    RouteDef(Routes.walletTransferConfirmationScreen,
        page: WalletTransferConfirmationScreen),
    RouteDef(Routes.walletTransferDoneScreen, page: WalletTransferDoneScreen),
    RouteDef(Routes.accountScreen, page: AccountScreen),
    RouteDef(Routes.devicesScreen, page: DevicesScreen),
    RouteDef(Routes.paperKeyScreen, page: PaperKeyScreen),
    RouteDef(Routes.revokeDeviceScreen, page: RevokeDeviceScreen),
    RouteDef(Routes.revokeDeviceDoneScreen, page: RevokeDeviceDoneScreen),
    RouteDef(Routes.identitiesScreen, page: IdentitiesScreen),
    RouteDef(Routes.proveIdentityScreen, page: ProveIdentityScreen),
    RouteDef(Routes.proveIdentityInstractionsScreen,
        page: ProveIdentityInstractionsScreen),
    RouteDef(Routes.proveIdentityDone, page: ProveIdentityDone),
    RouteDef(Routes.revokeIdentityScreen, page: RevokeIdentityScreen),
    RouteDef(Routes.revokeIdentityDoneScreen, page: RevokeIdentityDoneScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    BlankScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BlankScreen(),
        settings: data,
      );
    },
    IntroScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => IntroScreen(),
        settings: data,
      );
    },
    GenerateAccountStepOneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GenerateAccountStepOneScreen(),
        settings: data,
      );
    },
    GenerateAccountStepTwoScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GenerateAccountStepTwoScreen(),
        settings: data,
      );
    },
    GenerateAccountDoneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GenerateAccountDoneScreen(),
        settings: data,
      );
    },
    RecoverAccountStepOneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RecoverAccountStepOneScreen(),
        settings: data,
      );
    },
    RecoverAccountStepTwoScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RecoverAccountStepTwoScreen(),
        settings: data,
      );
    },
    RecoverAccountDoneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RecoverAccountDoneScreen(),
        settings: data,
      );
    },
    MainScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MainScreen(),
        settings: data,
      );
    },
    WalletTransferScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WalletTransferScreen(),
        settings: data,
      );
    },
    WalletTransferConfirmationScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WalletTransferConfirmationScreen(),
        settings: data,
      );
    },
    WalletTransferDoneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WalletTransferDoneScreen(),
        settings: data,
      );
    },
    AccountScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountScreen(),
        settings: data,
      );
    },
    DevicesScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => DevicesScreen(),
        settings: data,
      );
    },
    PaperKeyScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaperKeyScreen(),
        settings: data,
      );
    },
    RevokeDeviceScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeDeviceScreen(),
        settings: data,
      );
    },
    RevokeDeviceDoneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeDeviceDoneScreen(),
        settings: data,
      );
    },
    IdentitiesScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => IdentitiesScreen(),
        settings: data,
      );
    },
    ProveIdentityScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProveIdentityScreen(),
        settings: data,
      );
    },
    ProveIdentityInstractionsScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProveIdentityInstractionsScreen(),
        settings: data,
      );
    },
    ProveIdentityDone: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProveIdentityDone(),
        settings: data,
      );
    },
    RevokeIdentityScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeIdentityScreen(),
        settings: data,
      );
    },
    RevokeIdentityDoneScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeIdentityDoneScreen(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushBlankScreen() => pushNamed<dynamic>(Routes.blankScreen);

  Future<dynamic> pushIntroScreen() => pushNamed<dynamic>(Routes.introScreen);

  Future<dynamic> pushGenerateAccountStepOneScreen() =>
      pushNamed<dynamic>(Routes.generateAccountStepOneScreen);

  Future<dynamic> pushGenerateAccountStepTwoScreen() =>
      pushNamed<dynamic>(Routes.generateAccountStepTwoScreen);

  Future<dynamic> pushGenerateAccountDoneScreen() =>
      pushNamed<dynamic>(Routes.generateAccountDoneScreen);

  Future<dynamic> pushRecoverAccountStepOneScreen() =>
      pushNamed<dynamic>(Routes.recoverAccountStepOneScreen);

  Future<dynamic> pushRecoverAccountStepTwoScreen() =>
      pushNamed<dynamic>(Routes.recoverAccountStepTwoScreen);

  Future<dynamic> pushRecoverAccountDoneScreen() =>
      pushNamed<dynamic>(Routes.recoverAccountDoneScreen);

  Future<dynamic> pushMainScreen() => pushNamed<dynamic>(Routes.mainScreen);

  Future<dynamic> pushWalletTransferScreen() =>
      pushNamed<dynamic>(Routes.walletTransferScreen);

  Future<dynamic> pushWalletTransferConfirmationScreen() =>
      pushNamed<dynamic>(Routes.walletTransferConfirmationScreen);

  Future<dynamic> pushWalletTransferDoneScreen() =>
      pushNamed<dynamic>(Routes.walletTransferDoneScreen);

  Future<dynamic> pushAccountScreen() =>
      pushNamed<dynamic>(Routes.accountScreen);

  Future<dynamic> pushDevicesScreen() =>
      pushNamed<dynamic>(Routes.devicesScreen);

  Future<dynamic> pushPaperKeyScreen() =>
      pushNamed<dynamic>(Routes.paperKeyScreen);

  Future<dynamic> pushRevokeDeviceScreen() =>
      pushNamed<dynamic>(Routes.revokeDeviceScreen);

  Future<dynamic> pushRevokeDeviceDoneScreen() =>
      pushNamed<dynamic>(Routes.revokeDeviceDoneScreen);

  Future<dynamic> pushIdentitiesScreen() =>
      pushNamed<dynamic>(Routes.identitiesScreen);

  Future<dynamic> pushProveIdentityScreen() =>
      pushNamed<dynamic>(Routes.proveIdentityScreen);

  Future<dynamic> pushProveIdentityInstractionsScreen() =>
      pushNamed<dynamic>(Routes.proveIdentityInstractionsScreen);

  Future<dynamic> pushProveIdentityDone() =>
      pushNamed<dynamic>(Routes.proveIdentityDone);

  Future<dynamic> pushRevokeIdentityScreen() =>
      pushNamed<dynamic>(Routes.revokeIdentityScreen);

  Future<dynamic> pushRevokeIdentityDoneScreen() =>
      pushNamed<dynamic>(Routes.revokeIdentityDoneScreen);
}
