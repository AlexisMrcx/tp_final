import 'package:flutter/material.dart';

import 'app/modules/note/model/note_model.dart';
import 'app/screens/home/home_screen.dart';
import 'app/screens/note_details/note_details_screen.dart';

const kHomeRoute = '/home';
const kNoteDetailsRoute = '/note_details';

final Map<String, WidgetBuilder> kRoutes = {
  kHomeRoute: (_)=>HomeScreen(),
  kNoteDetailsRoute: (_)=>NoteDetailsScreen()
};

onGenerateRoute(settings){
  if(settings.name == kNoteDetailsRoute){
    Note data = settings.arguments;
    return MaterialPageRoute(builder: (_) => NoteDetailsScreen(data: data));

  } 
  else {
    return null;

  }
}