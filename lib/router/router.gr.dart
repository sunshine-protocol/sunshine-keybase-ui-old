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
import 'package:identity/services/client/client_service.dart';
import 'package:identity/models/identity/service.dart';

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
      var args =
          data.getArgs<RecoverAccountStepTwoScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RecoverAccountStepTwoScreen(args.paperKey),
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
        maintainState: false,
      );
    },
    WalletTransferScreen: (RouteData data) {
      var args = data.getArgs<WalletTransferScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WalletTransferScreen(args.amount),
        settings: data,
      );
    },
    WalletTransferConfirmationScreen: (RouteData data) {
      var args = data.getArgs<WalletTransferConfirmationScreenArguments>(
          nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            WalletTransferConfirmationScreen(args.id, args.amount),
        settings: data,
      );
    },
    WalletTransferDoneScreen: (RouteData data) {
      var args = data.getArgs<WalletTransferDoneScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WalletTransferDoneScreen(args.id, args.amount),
        settings: data,
      );
    },
    AccountScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountScreen(),
        settings: data,
        maintainState: false,
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
      var args = data.getArgs<RevokeDeviceScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeDeviceScreen(args.deviceId),
        settings: data,
      );
    },
    RevokeDeviceDoneScreen: (RouteData data) {
      var args = data.getArgs<RevokeDeviceDoneScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeDeviceDoneScreen(args.deviceId),
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
      var args =
          data.getArgs<ProveIdentityInstractionsScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProveIdentityInstractionsScreen(
            args.username, args.proveIdentityResult),
        settings: data,
      );
    },
    ProveIdentityDone: (RouteData data) {
      var args = data.getArgs<ProveIdentityDoneArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProveIdentityDone(args.service),
        settings: data,
      );
    },
    RevokeIdentityScreen: (RouteData data) {
      var args = data.getArgs<RevokeIdentityScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RevokeIdentityScreen(args.service),
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

  Future<dynamic> pushRecoverAccountStepTwoScreen({
    @required String paperKey,
  }) =>
      pushNamed<dynamic>(
        Routes.recoverAccountStepTwoScreen,
        arguments: RecoverAccountStepTwoScreenArguments(paperKey: paperKey),
      );

  Future<dynamic> pushRecoverAccountDoneScreen() =>
      pushNamed<dynamic>(Routes.recoverAccountDoneScreen);

  Future<dynamic> pushMainScreen() => pushNamed<dynamic>(Routes.mainScreen);

  Future<dynamic> pushWalletTransferScreen({
    @required String amount,
  }) =>
      pushNamed<dynamic>(
        Routes.walletTransferScreen,
        arguments: WalletTransferScreenArguments(amount: amount),
      );

  Future<dynamic> pushWalletTransferConfirmationScreen({
    @required String id,
    @required String amount,
  }) =>
      pushNamed<dynamic>(
        Routes.walletTransferConfirmationScreen,
        arguments:
            WalletTransferConfirmationScreenArguments(id: id, amount: amount),
      );

  Future<dynamic> pushWalletTransferDoneScreen({
    @required String id,
    @required String amount,
  }) =>
      pushNamed<dynamic>(
        Routes.walletTransferDoneScreen,
        arguments: WalletTransferDoneScreenArguments(id: id, amount: amount),
      );

  Future<dynamic> pushAccountScreen() =>
      pushNamed<dynamic>(Routes.accountScreen);

  Future<dynamic> pushDevicesScreen() =>
      pushNamed<dynamic>(Routes.devicesScreen);

  Future<dynamic> pushPaperKeyScreen() =>
      pushNamed<dynamic>(Routes.paperKeyScreen);

  Future<dynamic> pushRevokeDeviceScreen({
    @required String deviceId,
  }) =>
      pushNamed<dynamic>(
        Routes.revokeDeviceScreen,
        arguments: RevokeDeviceScreenArguments(deviceId: deviceId),
      );

  Future<dynamic> pushRevokeDeviceDoneScreen({
    @required String deviceId,
  }) =>
      pushNamed<dynamic>(
        Routes.revokeDeviceDoneScreen,
        arguments: RevokeDeviceDoneScreenArguments(deviceId: deviceId),
      );

  Future<dynamic> pushIdentitiesScreen() =>
      pushNamed<dynamic>(Routes.identitiesScreen);

  Future<dynamic> pushProveIdentityScreen() =>
      pushNamed<dynamic>(Routes.proveIdentityScreen);

  Future<dynamic> pushProveIdentityInstractionsScreen({
    @required String username,
    @required ProveIdentityResult proveIdentityResult,
  }) =>
      pushNamed<dynamic>(
        Routes.proveIdentityInstractionsScreen,
        arguments: ProveIdentityInstractionsScreenArguments(
            username: username, proveIdentityResult: proveIdentityResult),
      );

  Future<dynamic> pushProveIdentityDone({
    @required String service,
  }) =>
      pushNamed<dynamic>(
        Routes.proveIdentityDone,
        arguments: ProveIdentityDoneArguments(service: service),
      );

  Future<dynamic> pushRevokeIdentityScreen({
    @required SocialIdentityService service,
  }) =>
      pushNamed<dynamic>(
        Routes.revokeIdentityScreen,
        arguments: RevokeIdentityScreenArguments(service: service),
      );

  Future<dynamic> pushRevokeIdentityDoneScreen() =>
      pushNamed<dynamic>(Routes.revokeIdentityDoneScreen);
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//RecoverAccountStepTwoScreen arguments holder class
class RecoverAccountStepTwoScreenArguments {
  final String paperKey;
  RecoverAccountStepTwoScreenArguments({@required this.paperKey});
}

//WalletTransferScreen arguments holder class
class WalletTransferScreenArguments {
  final String amount;
  WalletTransferScreenArguments({@required this.amount});
}

//WalletTransferConfirmationScreen arguments holder class
class WalletTransferConfirmationScreenArguments {
  final String id;
  final String amount;
  WalletTransferConfirmationScreenArguments(
      {@required this.id, @required this.amount});
}

//WalletTransferDoneScreen arguments holder class
class WalletTransferDoneScreenArguments {
  final String id;
  final String amount;
  WalletTransferDoneScreenArguments({@required this.id, @required this.amount});
}

//RevokeDeviceScreen arguments holder class
class RevokeDeviceScreenArguments {
  final String deviceId;
  RevokeDeviceScreenArguments({@required this.deviceId});
}

//RevokeDeviceDoneScreen arguments holder class
class RevokeDeviceDoneScreenArguments {
  final String deviceId;
  RevokeDeviceDoneScreenArguments({@required this.deviceId});
}

//ProveIdentityInstractionsScreen arguments holder class
class ProveIdentityInstractionsScreenArguments {
  final String username;
  final ProveIdentityResult proveIdentityResult;
  ProveIdentityInstractionsScreenArguments(
      {@required this.username, @required this.proveIdentityResult});
}

//ProveIdentityDone arguments holder class
class ProveIdentityDoneArguments {
  final String service;
  ProveIdentityDoneArguments({@required this.service});
}

//RevokeIdentityScreen arguments holder class
class RevokeIdentityScreenArguments {
  final SocialIdentityService service;
  RevokeIdentityScreenArguments({@required this.service});
}
