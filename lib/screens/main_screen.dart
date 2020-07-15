import 'package:flutter/material.dart';
import 'package:identity/identity.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _value = '0';
  final _numberFormat = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: '☼',
    name: 'Token',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MainScreenAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 20.h.toDouble()),
          _TokensValue(_numberFormat.format(_numberFormat.parse(_value))),
          SizedBox(height: 4.h.toDouble()),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              '$_value Tokens',
              style: TextStyle(
                fontSize: 14.ssp.toDouble(),
                fontWeight: FontWeight.w500,
                color: AppColors.secondry,
              ),
            ),
          ),
          SizedBox(height: 4.h.toDouble()),
          const Expanded(child: SizedBox()),
          Numpad(
            length: 16,
            onChange: (v) {
              setState(() {
                if (v.isEmpty) {
                  _value = '0';
                } else {
                  _value = v;
                }
              });
            },
          ),
          SizedBox(height: 40.h.toDouble()),
          Button(
            text: 'Transfer',
            enabled: int.parse(_value) > 0,
            onPressed: () {
              ExtendedNavigator.root.pushWalletTransferScreen(amount: _value);
            },
            variant: ButtonVariant.success,
          ),
          SizedBox(height: 20.h.toDouble()),
        ],
      ),
    );
  }
}

class _MainScreenAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 2);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _LogoIcon(),
          GestureDetector(
            child: const _ProfileIcon(),
            onTap: () {
              ExtendedNavigator.root.pushAccountScreen();
            },
          )
        ],
      ),
    );
  }
}

class _LogoIcon extends StatelessWidget {
  const _LogoIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w.toDouble(),
        vertical: 35.h.toDouble(),
      ),
      child: const SunshineLogo(
        height: 42,
        width: 42,
      ),
    );
  }
}

class _ProfileIcon extends StatelessWidget {
  const _ProfileIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w.toDouble(),
        vertical: 35.h.toDouble(),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.black,
            ),
          ),
          borderRadius: BorderRadius.circular(
            42.w.toDouble(),
          ),
        ),
        child: Icon(
          Icons.person,
          size: 42,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _TokensValue extends StatelessWidget {
  const _TokensValue(String value) : _value = value;
  final String _value;
  static final TextStyle _textStyle = TextStyle(
    fontSize: 74.ssp.toDouble(),
    fontWeight: FontWeight.w900,
    color: AppColors.success,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(_value, style: _textStyle),
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
