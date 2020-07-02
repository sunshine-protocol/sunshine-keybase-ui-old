import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:identity/setup.dart';
import 'package:identity/identity.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  runApp(MyApp());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunshine Identity',
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: Routes.intro,
      onGenerateRoute: _generateRoute,
    );
  }

  Route _generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.intro:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case Routes.blank:
        return MaterialPageRoute(builder: (_) => BlankScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
