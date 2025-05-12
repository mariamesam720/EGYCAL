import 'package:egycal/features/Home/presentation/widgets/home.dart';
import 'package:flutter/material.dart';

class avatarimg extends StatelessWidget {
  final String? image;
  const avatarimg({super.key , this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home())
        );
      },
      child: CircleAvatar(
        radius: 50,
        backgroundImage:AssetImage(image!),
      ),
    );
  }
}
