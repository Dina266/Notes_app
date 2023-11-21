import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_item_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomAppBar(
                title: 'Note',
                icon: Icons.search,
              ),
              Expanded(child: NoteItemBuilder()),
            ],
          )),
    );
  }
}
