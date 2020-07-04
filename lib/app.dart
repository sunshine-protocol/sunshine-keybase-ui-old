import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunshine Identity',
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: Routes.intro,
      onGenerateRoute: _generateRoute,
    );
  }

  Route _generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.intro:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case Routes.generateAccountStepOne:
        return MaterialPageRoute(
          builder: (_) => GenerateAccountStepOneScreen(),
        );
      case Routes.generateAccountStepTwo:
        return MaterialPageRoute(
          builder: (_) => GenerateAccountStepTwoScreen(),
        );
      case Routes.generateAccountDone:
        return MaterialPageRoute(
          builder: (_) => GenerateAccountDoneScreen(),
        );
      case Routes.recoverAccountStepOne:
        return MaterialPageRoute(
          builder: (_) => RecoverAccountStepOneScreen(),
        );
      case Routes.recoverAccountStepTwo:
        return MaterialPageRoute(
          builder: (_) => RecoverAccountStepTwoScreen(),
        );
      case Routes.recoverAccountDone:
        return MaterialPageRoute(
          builder: (_) => RecoverAccountDoneScreen(),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (_) => MainScreen(),
        );
      case Routes.walletTransfer:
        return MaterialPageRoute(
          builder: (_) => WalletTransferScreen(),
        );
      case Routes.walletTransferConfirmation:
        return MaterialPageRoute(
          builder: (_) => WalletTransferConfirmationScreen(),
        );
      case Routes.walletTransferDone:
        return MaterialPageRoute(
          builder: (_) => WalletTransferDoneScreen(),
        );
      case Routes.blank:
        return MaterialPageRoute(builder: (_) => BlankScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
