
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.hintText, this.onChanged,});

  String? hintText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: hintText == 'Content' ? 7 : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        focusedBorder: BuildBorder(kPrimaryColor),
        enabledBorder: BuildBorder(),
        border: BuildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor ,),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(color: color?? Colors.white));
  }
}

