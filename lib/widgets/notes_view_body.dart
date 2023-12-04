import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_app_bar.dart';
import 'note_item_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const CustomAppBar(
                title: 'Note',
                icon: Icons.search,
              ),
              Expanded(child: NoteItemBuilder()),
            ],
          )),
    );
  }
}
