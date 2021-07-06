import 'package:flutter/material.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
         child: Padding(
           padding: const EdgeInsets.all(30),
           child: Container(
             child: SingleChildScrollView(
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(15),
                   child: Form(
                     autovalidateMode: null,
                     key: null,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                             "NOUVELLE NOTE",
                             style: TextStyle(fontSize:20, color: Colors.black12)
                           ),
                         ),
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Titre",
                              border: OutlineInputBorder(
                                gapPadding: 0.0, 
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            minLines: 5,
                            maxLines: null,
                            decoration: InputDecoration(
                              labelText: "Contenu",
                              border: OutlineInputBorder(
                                gapPadding: 0.0, 
                              )
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                            onPressed: null,
                            style: TextButton.styleFrom(backgroundColor: Colors.grey),
                            child: Text(
                              "Ajouter une image",
                              style: TextStyle(color: Colors.white)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              onPressed: null,                            
                              style: TextButton.styleFrom(backgroundColor: Colors.grey),              
                              child: Text(
                                "AJOUTER MA NOTE",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                                )
                            ),
                          )
                        )
                       ],
                     ),
                   )
                 ),
               ),
             ),
           ),
         ),
      ),
    );
  }
}