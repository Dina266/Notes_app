import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Title',
              ),
              SizedBox(height: 15,),
              CustomTextField(
                hintText: 'Content',
              ),
              SizedBox(height: 50,),
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
