import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.notes});

  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: notes),
    );
  }
}