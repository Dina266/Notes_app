import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_notes.dart';

import '../models/note_model.dart';
import 'notes_item.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List <NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes?? [];
        return ListView.builder(
          itemCount: notes.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditNote(),
                          )),
                      child: const NoteItem()),
                ));
      },
    );
  }
}
