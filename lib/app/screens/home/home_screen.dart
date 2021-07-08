import 'package:flutter/material.dart';
import 'package:tp_final/app/screens/home/widgets/home_form.dart';
import 'package:tp_final/app/screens/home/widgets/list_note.dart';

class HomeScreen extends StatefulWidget {
 HomeScreen({Key? key}) : super(key: key);

  @override
   _HomeScreenState createState() =>  _HomeScreenState();
}

class _HomeScreenState extends State <HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "MES NOTES",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                ),
            ),
            HomeForm(),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "MES NOTES SAUVEGARDEES",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListNote(),
            )
          ]
        ),
      );
  }
}