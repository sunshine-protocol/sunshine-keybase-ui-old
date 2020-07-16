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
    AdaptiveRoute(
      page: MainScreen,
      guards: [HasAccountGuard],
      maintainState: false,
    ),
    AdaptiveRoute(page: WalletTransferScreen),
    AdaptiveRoute(page: WalletTransferConfirmationScreen),
    AdaptiveRoute(page: WalletTransferDoneScreen),
    AdaptiveRoute(
      page: AccountScreen,
      maintainState: false,
    ),
    AdaptiveRoute(page: DevicesScreen),
    AdaptiveRoute(page: PaperKeyScreen),
    AdaptiveRoute(page: RevokeDeviceScreen),
    AdaptiveRoute(page: RevokeDeviceDoneScreen),
    AdaptiveRoute(page: IdentitiesScreen),
    AdaptiveRoute(page: ProveIdentityScreen),
    AdaptiveRoute(page: ProveIdentityInstractionsScreen),
    AdaptiveRoute(page: ProveIdentityDone),
    AdaptiveRoute(page: RevokeIdentityScreen),
    AdaptiveRoute(page: RevokeIdentityDoneScreen),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
