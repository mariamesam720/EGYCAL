import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'lnter',
            fontSize: 16,
            color: Color(0xFF6E7179),
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
