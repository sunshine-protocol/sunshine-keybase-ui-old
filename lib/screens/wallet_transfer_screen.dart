import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class WalletTransferScreen extends StatefulWidget {
  @override
  _WalletTransferScreenState createState() => _WalletTransferScreenState();
}

class _WalletTransferScreenState extends State<WalletTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Transfer'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText('Transfer Tokens from your wallet'),
          SizedBox(height: 20.h.toDouble()),
          Padding(
            padding: EdgeInsets.only(left: 25.w.toDouble()),
            child: const HintText('Who you want to send these tokens?'),
          ),
          SizedBox(height: 20.h.toDouble()),
          const Input(
            hintText: 'UID or Username',
          ),
          SizedBox(height: 10.h.toDouble()),
          const Expanded(
            child: SizedBox(),
          ),
          Button(
            text: 'Next',
            variant: ButtonVariant.success,
            onPressed: () {
              ExtendedNavigator.root.pushWalletTransferConfirmationScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }
}

class WalletTransferConfirmationScreen extends StatefulWidget {
  @override
  _WalletTransferConfirmationScreenState createState() =>
      _WalletTransferConfirmationScreenState();
}

class _WalletTransferConfirmationScreenState
    extends State<WalletTransferConfirmationScreen> {
  final String _tokens = '1000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Transfer'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h.toDouble()),
          const Center(child: HeaderText('You are about to transfer')),
          SizedBox(height: 30.h.toDouble()),
          _TransferTokensValue(tokens: _tokens),
          SizedBox(height: 12.h.toDouble()),
          const Center(child: HintText('Tokens')),
          SizedBox(height: 30.h.toDouble()),
          const Center(child: HeaderText('To shekohex@github')),
          SizedBox(height: 30.h.toDouble()),
          const Center(
            child: HintText('There is no way to reverse this'),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Button(
            text: 'Transfer',
            variant: ButtonVariant.success,
            onPressed: _walletTransfer,
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }

  void _walletTransfer() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const LoadingView(
        loadingMessage: 'we are sending the tokens',
      ),
    );
    Future.delayed(
      const Duration(seconds: 2),
      () {
        ExtendedNavigator.root
          ..clearHistory()
          ..pushWalletTransferDoneScreen();
      },
    );
  }
}

class _TransferTokensValue extends StatelessWidget {
  const _TransferTokensValue({
    @required String tokens,
    Key key,
  })  : _tokens = tokens,
        super(key: key);

  final String _tokens;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w.toDouble()),
        child: FittedBox(
          child: Text(
            '☼$_tokens',
            style: TextStyle(
              fontSize: 42.ssp.toDouble(),
              fontWeight: FontWeight.w900,
              color: AppColors.success,
            ),
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class WalletTransferDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100.h.toDouble()),
          const Center(child: HeaderText('You successfully sent')),
          SizedBox(height: 30.h.toDouble()),
          const _TransferTokensValue(tokens: '1000'),
          SizedBox(height: 30.h.toDouble()),
          const Center(child: HeaderText('tokens to shekohex@github')),
          SizedBox(height: 30.h.toDouble()),
          const SunshineLogo(),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Button(
            text: 'Finish',
            variant: ButtonVariant.primary,
            onPressed: () {
              ExtendedNavigator.root
                ..clearHistory()
                ..pushMainScreen();
            },
          ),
          SizedBox(height: 15.h.toDouble())
        ],
      ),
    );
  }
}
