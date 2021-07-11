import 'package:flutter/material.dart';
import 'package:tp_final/app/modules/note/model/note_model.dart';
import 'package:tp_final/app/screens/home/widgets/list_note_element.dart';
import 'package:tp_final/app_routes.dart';


class ListNote extends StatefulWidget {
  @override
  _ListNoteState createState() => _ListNoteState();
}

class _ListNoteState extends State<ListNote> {
  final List<Note> noteList = [
    Note(title: "Note1", dateTime: DateTime.now(), content: "Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / Explication de la note 1 / "),
    Note(title: "Note2", dateTime: DateTime.now(), content: "Explication de la note 2"),
    Note(title: "Note3", dateTime: DateTime.now(), content: "Explication de la note 3"),
    Note(title: "Note4", dateTime: DateTime.now(), content: "Explication de la note 4"),
    Note(title: "Note5", dateTime: DateTime.now(), content: "Explication de la note 5"),
    Note(title: "Note6", dateTime: DateTime.now(), content: "Explication de la note 6"),
  ];

  navigateToDetails({Note? arguments}) {
    Navigator.pushNamed(context, kNoteDetailsRoute, arguments: arguments);
  }


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: noteList.length,
      itemBuilder: (context, position) {
        return InkWell(
          onTap: () => navigateToDetails(
            arguments: noteList[position]
          ),
          child: Row(
            children: [
              ListNoteElement(element : noteList[position])
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(thickness: 5, color: Colors.black),
    );
  }
}