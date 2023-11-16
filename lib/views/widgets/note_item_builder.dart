
import 'package:flutter/material.dart';

import 'notes_item.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key});

  final dataColor = const [
    Color(0xffFFCD7A),
    Color(0xffE7E896),
    Color(0xff76D6EE),
    Color(0xffD899DE),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context , index)=> const Padding(padding: EdgeInsets.symmetric(vertical: 4),
      child: NoteItem()
      ,)
    );
  }
}
