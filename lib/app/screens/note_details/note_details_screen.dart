import 'package:flutter/material.dart';
import 'package:tp_final/app/modules/note/model/note_model.dart';

class NoteDetailsScreen extends StatelessWidget {  
  const NoteDetailsScreen({this.data});
  final Note? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MES NOTES",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: null,
    );
  }
}