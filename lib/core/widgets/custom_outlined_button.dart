import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const CustomOutlinedButton( {required this.text,required this.isSelected,required this.onTap,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 312.0,
        height: 65.0,
        decoration: BoxDecoration(
           color: Color(0xFFFFFBFB),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color:isSelected? Color(0xFF337277):Color(0xFFFFFBFB),
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF0D1220),fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
