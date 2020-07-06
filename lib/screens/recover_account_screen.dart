import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class RecoverAccountStepOneScreen extends StatefulWidget {
  @override
  _RecoverAccountStepOneScreenState createState() =>
      _RecoverAccountStepOneScreenState();
}

class _RecoverAccountStepOneScreenState
    extends State<RecoverAccountStepOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Recover Account'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText('Enter your device paper key'),
          SizedBox(height: 30.h.toDouble()),
          const Input(
            maxLines: 4,
            minLines: 4,
            hintText: 'mandate robust earth scan shrimp second pipe pitch'
                ' eternal snap glare tooth bean crucial river bar'
                ' crash nice sorry laundry oppose filter aunt swear',
          ),
          SizedBox(height: 10.h.toDouble()),
          const Expanded(
            child: SizedBox(),
          ),
          Button(
            text: 'Next',
            variant: ButtonVariant.success,
            onPressed: () {
              ExtendedNavigator.root.pushRecoverAccountStepTwoScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }
}

class RecoverAccountStepTwoScreen extends StatefulWidget {
  @override
  _RecoverAccountStepTwoScreenState createState() =>
      _RecoverAccountStepTwoScreenState();
}

class _RecoverAccountStepTwoScreenState
    extends State<RecoverAccountStepTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Recover Account'),
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
            text: 'Restore',
            variant: ButtonVariant.success,
            onPressed: _restoreAccount,
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }

  void _restoreAccount() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const LoadingView(
        loadingMessage: 'we are restoring your account',
      ),
    );
    Future.delayed(
      const Duration(seconds: 2),
      () {
        ExtendedNavigator.root
          ..popPages(1)
          ..pushRecoverAccountDoneScreen();
      },
    );
  }
}

class RecoverAccountDoneScreen extends StatelessWidget {
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
