import 'package:auto_route/auto_route_annotations.dart';
import 'package:identity/identity.dart';

import 'guards/guards.dart';

export 'guards/guards.dart';
export 'router.gr.dart';

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
    AdaptiveRoute(page: MainScreen, guards: [HasAccountGuard]),
    AdaptiveRoute(page: WalletTransferScreen),
    AdaptiveRoute(page: WalletTransferConfirmationScreen),
    AdaptiveRoute(page: WalletTransferDoneScreen),
    AdaptiveRoute(page: AccountScreen),
    AdaptiveRoute(page: DevicesScreen),
    AdaptiveRoute(page: PaperKeyScreen),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
