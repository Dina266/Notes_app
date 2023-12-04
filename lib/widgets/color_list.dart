
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorListItem extends StatelessWidget {
  const ColorListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 40,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8 , top: 8 ),
          child: ColorItem(),
        ),),
    );
  }
}