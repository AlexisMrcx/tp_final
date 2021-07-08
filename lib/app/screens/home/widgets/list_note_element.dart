import 'package:flutter/material.dart';
import 'package:tp_final/app/modules/note/model/note_model.dart';

class ListNoteElement extends StatelessWidget {
  const ListNoteElement({required this.element});

  final Note element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${element.dateTime.day} - ${element.dateTime.month + 1} - ${element.dateTime.year}',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  element.content,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}