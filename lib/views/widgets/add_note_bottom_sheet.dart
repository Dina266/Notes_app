import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Title',
              ),
              const SizedBox(height: 15,),
              CustomTextField(
                hintText: 'Content',
              ),
              const SizedBox(height: 50,),
              CustomButtom(
                title: 'Add',
              )
            ],
          ),
        ),
      ),
    );
  }
}
