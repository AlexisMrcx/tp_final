import 'package:flutter/material.dart';
import 'package:tp_final/app/screens/home/home_screen.dart';
import 'package:tp_final/app/screens/home/widgets/list_note.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
