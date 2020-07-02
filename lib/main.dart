import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:identity/app.dart';
import 'package:identity/setup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  runApp(MyApp());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
