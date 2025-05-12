import 'package:flutter/material.dart';

class avatarimg extends StatelessWidget {
  final String? image;
  const avatarimg({super.key , this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.push(context,
        // MaterialPageRoute(builder: (context) => DiaryPage())
        // );
      },
      child: CircleAvatar(
        radius: 25,
        backgroundImage:AssetImage(image!),
      ),
    );
  }
}