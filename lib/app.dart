import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:identity/router.gr.dart';

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
      builder: ExtendedNavigator(
        router: Router(),
        onUnknownRoute: _onUnknownRoute,
      ),
    );
  }

  Route _onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for ${settings.name}'),
        ),
      ),
    );
  }
}
