import 'package:flutter/material.dart';
import 'package:identity/identity.dart';

class PaperKeyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Devices'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText('Device paper key'),
          SizedBox(height: 28.h.toDouble()),
          const Input(
            hintText: 'mandate robust earth scan shrimp second '
                'pipe pitch eternal snap glare tooth bean crucial '
                'river bar crash nice sorry laundry oppose filter aunt swear',
            maxLines: 4,
            readOnly: true,
          ),
          const Padding(
            padding: EdgeInsets.all(22),
            child: HintText(
              'A paper key can be used to access your account in case you'
              ' lose all your devices. Keep one in a safe place '
              '(like a wallet) to keep your data safe.',
              maxLines: 4,
              softWrap: true,
            ),
          ),
          const Expanded(child: SizedBox()),
          Button(
            text: 'Yes, I wrote it down',
            onPressed: ExtendedNavigator.root.pop,
          ),
          SizedBox(height: 15.h.toDouble()),
        ],
      ),
    );
  }
}
