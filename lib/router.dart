import 'package:auto_route/auto_route_annotations.dart';
import 'package:identity/identity.dart';

@AdaptiveAutoRouter(
  routes: [
    AdaptiveRoute(page: BlankScreen),
    AdaptiveRoute(page: IntroScreen, initial: true),
    AdaptiveRoute(page: GenerateAccountStepOneScreen),
    AdaptiveRoute(page: GenerateAccountStepTwoScreen),
    AdaptiveRoute(page: GenerateAccountDoneScreen),
    AdaptiveRoute(page: RecoverAccountStepOneScreen),
    AdaptiveRoute(page: RecoverAccountStepTwoScreen),
    AdaptiveRoute(page: RecoverAccountDoneScreen),
    AdaptiveRoute(page: MainScreen),
    AdaptiveRoute(page: WalletTransferScreen),
    AdaptiveRoute(page: WalletTransferConfirmationScreen),
    AdaptiveRoute(page: WalletTransferDoneScreen),
    AdaptiveRoute(page: AccountScreen),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
