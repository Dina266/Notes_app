
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.hintText, this.onChanged,});

  String? hintText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: hintText == 'Content' ? 7 : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.white
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white)),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xff54E9D5)),
      ),
    );
  }
}
