import 'package:flutter/material.dart';

class MFeet extends StatelessWidget {
  final bool isItM;
  const MFeet({super.key, required this.isItM});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          isItM ?'M':'feet',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Color(0xFF0D1220),
          ),
        ),
      ),
    );
    ;
  }
}
