import 'package:flutter/material.dart';
import 'package:identity/core/core.dart';
import 'package:identity/identity.dart';
import 'generate_account_view_model.dart';

class GenerateAccountScreen extends StatefulWidget {
  @override
  _GenerateAccountScreenState createState() => _GenerateAccountScreenState();
}

class _GenerateAccountScreenState extends State<GenerateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return BaseWidget<GenerateAccountViewModel>(
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Generate Account',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      builder: (context, model, child) {
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          // ignore: avoid_as
          appBar: child as PreferredSizeWidget,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AccountDetailsForm(
                  formKey: _formKey,
                  autoValidate: _autoValidate,
                ),
                SizedBox(height: 20.h.toDouble()),
                if (model.isBusy)
                  const CircularProgressIndicator()
                else
                  GenerateAccount(
                    onPressed: (context) {
                      final form = _formKey.currentState..save();
                      if (form.validate()) {
                        form.save();
                        model.generate();
                        if (model.generated) {
                          Navigator.of(context).popAndPushNamed(
                            Routes.accountPharse,
                            arguments: model.accountBackup,
                          );
                        } else {
                          const snackBar = SnackBar(
                            content: Text('Account Generation Failed!'),
                            backgroundColor: Colors.redAccent,
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        }
                      } else {
                        setState(() {
                          _autoValidate = true;
                        });
                      }
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class GenerateAccount extends StatelessWidget {
  const GenerateAccount({Key key, this.onPressed}) : super(key: key);

  final Function(BuildContext) onPressed;
  @override
  Widget build(BuildContext context) {
    return Button(
        text: 'Proceed to backup phrase', onPressed: () => onPressed(context));
  }
}
