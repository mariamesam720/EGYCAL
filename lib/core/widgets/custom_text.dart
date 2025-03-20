import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String tittle;
  final String description;

  const CustomText({
    super.key,
    required this.tittle,
     required this.description,});   


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 3),
      child: Column(
        children: [
          Text(tittle,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF0D1220)
          ),),
      
          Text(description,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Color(0xFF6E7179)
          ),)
        ],
      ),
    );
  }
}
