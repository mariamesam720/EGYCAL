import 'package:flutter/material.dart';

class Meters extends StatelessWidget {
    int number;

  Meters({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          number.toString(),
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Color(0xFF0D1220),
          ),
        ),
      ),
    );
  }
}
