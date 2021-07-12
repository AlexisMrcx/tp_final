import 'package:flutter/material.dart';
import 'package:tp_final/app/modules/note/model/note_model.dart';

class NoteDetailsScreen extends StatelessWidget {  
  const NoteDetailsScreen({required this.data});
  final Note data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "MES NOTES",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(data.title.toString()),
                      /*Text(data!.dateTime.toString()),
                      Text(data!.content.toString())*/
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}