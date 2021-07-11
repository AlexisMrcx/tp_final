import 'package:flutter/material.dart';
import 'package:tp_final/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: kHomeRoute,
      routes: kRoutes,
      onGenerateRoute: (settings)=> onGenerateRoute(settings),
    );
  }
}
