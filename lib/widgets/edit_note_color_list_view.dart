import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = dataColor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataColor.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = dataColor[index].value;

                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: dataColor[index],
              )),
        ),
      ),
    );
  }
}
