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
            fontWeight: FontWeight.normal,
            color: Color(0xFF102A43)
          ),),
      
          Text(description,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: Color(0xFF102A43)
          ),)
        ],
      ),
    );
  }
}
