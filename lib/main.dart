import 'package:flutter/material.dart';
import 'package:tp_final/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  update(){
    setState(() {
      
    });
  }

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
