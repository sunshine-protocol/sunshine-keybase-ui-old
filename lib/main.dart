import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:identity/app.dart';
import 'package:identity/setup.dart';
import 'package:intl/intl.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setup();
  runApp(MyApp());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future _setup() async {
  await configureDependencies();
  Intl.defaultLocale = 'en_US';
  // other pre-start setup goes here
}
