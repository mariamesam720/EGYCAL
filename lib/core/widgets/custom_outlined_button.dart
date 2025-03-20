import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  const CustomOutlinedButton(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.0,
      height: 60.0,
      child: OutlinedButton(
        child: Text(text, style: TextStyle(color: Color(0xFF0D1220))),
        style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Color(0xFF337277),
              style: BorderStyle.solid,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {},
      ),
    );
  }
}
