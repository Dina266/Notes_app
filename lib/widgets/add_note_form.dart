import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 7,
          ),
          const SizedBox(
            height: 10,
          ),
          const ColorListItem(),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                      isLoading: state is AddNoteLoading ? true : false,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
          
                          var noteModel = NoteModel(
                              title: title!,
                              subTitle: subTitle!,
                              date: DateTime.now().toString(),
                              color: BlocProvider.of<AddNoteCubit>(context).color.value);
          
                          BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                        } else {
                          autoValidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                      title: 'Add',
                    );
            },
          )
        ],
      ),
    );
  }
}
