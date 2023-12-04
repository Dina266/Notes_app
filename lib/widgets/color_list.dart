import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}

class ColorListItem extends StatefulWidget {
  const ColorListItem({super.key});

  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
  int currentIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).color = dataColor[index];
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
