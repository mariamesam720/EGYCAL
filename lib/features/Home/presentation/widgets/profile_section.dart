import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/CreateAvatar/presentation/widgets/circlea_vatar.dart';
import 'package:egycal/features/Home/presentation/widgets/notification.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
            child: avatarimg(image: "images/Ellipse 11.png",),
          ),
          SizedBox(width: 3,),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text('Hello Ahmed',
            style: TextStyle(
              fontFamily: "MarkaziText",
              fontSize: 28,
              fontWeight: FontWeight.normal
            ),
            ),
          ),
        SizedBox(width: SizeConfig.defaultSize!*8,),
        Notifications()
        ],
      ),
    );
  }
}