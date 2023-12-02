import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap , this.title, this.isLoading = false});
  final String? title;
  final VoidCallback? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: isLoading ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(color: Colors.black, )):Text(title!  , style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),),
                ),
              ),
    );
  }
}