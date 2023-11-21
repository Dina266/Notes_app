
import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes.dart';

import 'notes_item.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context , index)=> Padding(padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNote(),)),
        child: const NoteItem())
      ,)
    );
  }
}
