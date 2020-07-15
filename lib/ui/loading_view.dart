import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({String loadingMessage = 'we are doing things'})
      : _message = loadingMessage;

  final String _message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100.h.toDouble()),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: HeaderText(
              'Hold on\n'
              '$_message ...',
            ),
          ),
          SizedBox(height: 120.h.toDouble()),
          Center(
            child: SunshineLogo(
              width: 150.w.toDouble(),
              height: 150.h.toDouble(),
            ),
          ),
          SizedBox(height: 100.h.toDouble()),
          const Center(child: HintText('we will back right away ..')),
          SizedBox(height: 100.h.toDouble()),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
