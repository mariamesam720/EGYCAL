import 'package:flutter/material.dart';

class centimeter extends StatelessWidget {
    int cm=10;

  centimeter({super.key, required this.cm});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          cm.toString(),
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
