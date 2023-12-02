
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.hintText, this.onChanged, this.onSaved, this.maxLines =1,});

  final String? hintText;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Feild is required' ;
        }
        else {
          return null ;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor ,),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(color: color?? Colors.white));
  }
}

