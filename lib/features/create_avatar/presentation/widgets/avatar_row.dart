import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/diary/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class AvatarRow extends StatelessWidget {
  const AvatarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  AvatarImage(image :'images/Ellipse 8.png'),
                  AvatarImage(image :'images/Ellipse 9.png'),
                  AvatarImage(image :'images/Ellipse 10.png'),
                  
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarImage(image :'images/Ellipse 11.png'),
              AvatarImage(image :'images/Ellipse 12.png'),
              AvatarImage(image :'images/Ellipse 13.png'),
              
            ],
          ),
            SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarImage(image :'images/Ellipse 14.png'),
              AvatarImage(image :'images/Ellipse 15.png'),
              AvatarImage(image :'images/Ellipse 16.png'),
              
            ],
          ),
        ],
      ),
    );
  }
}
