import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:identity/app.dart';
import 'package:identity/setup.dart';
import 'package:intl/intl.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  Intl.defaultLocale = 'en_US';
  runApp(MyApp());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
