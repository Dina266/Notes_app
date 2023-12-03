import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  Color(note.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 24),
              child: Text(
                DateFormat.yMMMd().format(DateTime.parse(note.date)),
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
