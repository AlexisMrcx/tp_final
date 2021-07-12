import 'dart:io';

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
        padding: const EdgeInsets.all(20),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                    Text(
                      '${data.dateTime.day} - ${data.dateTime.month + 1} - ${data.dateTime.year}',
                      style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Text(
                          data.content.toString(),
                          maxLines: null,),
                      ),
                    ),
                    Image.file(File(data.picturePath), height: 100, width: MediaQuery.of(context).size.width - 100,)
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}