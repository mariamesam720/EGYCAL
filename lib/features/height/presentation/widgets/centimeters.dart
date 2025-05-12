import 'package:flutter/material.dart';

class Centimeter extends StatelessWidget {
  int cm=10;

  Centimeter({super.key, required this.cm});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        cm.toString(),
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: Color(0xFF0D1220),
        ),
      ),
    );
  }
}
