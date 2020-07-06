import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class GenerateAccountStepOneScreen extends StatefulWidget {
  @override
  _GenerateAccountStepOneScreenState createState() =>
      _GenerateAccountStepOneScreenState();
}

class _GenerateAccountStepOneScreenState
    extends State<GenerateAccountStepOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Generate Account'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText('Choose your Device Name'),
          SizedBox(height: 30.h.toDouble()),
          const Input(
            hintText: 'ex. Android Phone',
          ),
          SizedBox(height: 30.h.toDouble()),
          const Center(
            child: HintText(
              'Your name will only be stored on your device '
              'we don\'t share it anywhere else.',
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Button(
            text: 'Next',
            variant: ButtonVariant.success,
            onPressed: () {
              ExtendedNavigator.root.pushGenerateAccountStepTwoScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }
}

class GenerateAccountStepTwoScreen extends StatefulWidget {
  @override
  _GenerateAccountStepTwoScreenState createState() =>
      _GenerateAccountStepTwoScreenState();
}

class _GenerateAccountStepTwoScreenState
    extends State<GenerateAccountStepTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Generate Account'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FittedBox(
            fit: BoxFit.fitWidth,
            child: HeaderText('Add a password to secure your account'),
          ),
          SizedBox(height: 30.h.toDouble()),
          const Input(
            hintText: 'Password',
          ),
          SizedBox(height: 14.h.toDouble()),
          const Input(
            hintText: 'Password Again',
          ),
          SizedBox(height: 30.h.toDouble()),
          const Center(
            child: HintText('Password must be at least 8 characters'),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Button(
            text: 'Generate',
            variant: ButtonVariant.success,
            onPressed: _generateAccount,
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }

  void _generateAccount() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const LoadingView(
        loadingMessage: 'We are creating account for you',
      ),
    );
    Future.delayed(
      const Duration(seconds: 2),
      () {
        ExtendedNavigator.root
          ..popPages(1)
          ..pushGenerateAccountDoneScreen();
      },
    );
  }
}

class GenerateAccountDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100.h.toDouble()),
          Center(
            child: Text(
              'Your Account has been created\n'
              'Here is your account id',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.ssp.toDouble(),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.h.toDouble()),
          const Input(
            hintText: '1012120',
            readOnly: true,
          ),
          SizedBox(height: 30.h.toDouble()),
          Center(
            child: Text(
              'That\'s your device id in your account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.ssp.toDouble(),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.h.toDouble()),
          const Input(
            hintText: '5GrwvaEF5zXb26Fz9rcQpDWS57CEfgh',
            readOnly: true,
          ),
          SizedBox(height: 30.h.toDouble()),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: HintText(
                'you could access these information '
                'in your profile page.',
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Button(
            text: 'Finish',
            variant: ButtonVariant.primary,
            onPressed: () {
              ExtendedNavigator.root
                ..popPages(1)
                ..pushMainScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }
}
