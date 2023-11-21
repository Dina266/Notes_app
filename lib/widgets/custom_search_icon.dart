import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(16)),
      child: IconButton(onPressed: (){} , icon: Icon(icon),),
    );
  }
}
