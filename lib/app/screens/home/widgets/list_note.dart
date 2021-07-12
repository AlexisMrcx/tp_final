import 'package:flutter/material.dart';
import 'package:tp_final/app/modules/note/data/repository/note_repository.dart';
import 'package:tp_final/app/modules/note/model/note_model.dart';
import 'package:tp_final/app/screens/home/widgets/list_note_element.dart';
import 'package:tp_final/app_routes.dart';


class ListNote extends StatefulWidget {
  @override
  _ListNoteState createState() => _ListNoteState();
}

class _ListNoteState extends State<ListNote> {
  NoteRepository noteRepository  =NoteRepository();
  List<Note> noteList = [];

@override
  void initState(){
    queryResults();
    super.initState();
  }

  queryResults() async {
    noteList = await noteRepository.retrieve();
    setState(() {
    });
  }  


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