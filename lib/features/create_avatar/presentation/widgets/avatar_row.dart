import 'package:egycal/features/create_avatar/presentation/widgets/circlea_avatar.dart';
import 'package:egycal/features/home/presentation/widgets/home.dart';
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
                  avatarimg(image: 'images/Ellipse 8.png', ontap: () { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home())); },),
                  avatarimg(image: 'images/Ellipse 9.png', ontap: () { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home())); },),
                  avatarimg(image: 'images/Ellipse 10.png', ontap: () { Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home())); },),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              avatarimg(
                image: 'images/Ellipse 11.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              avatarimg(
                image: 'images/Ellipse 12.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              avatarimg(
                image: 'images/Ellipse 13.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              avatarimg(
                image: 'images/Ellipse 14.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              avatarimg(
                image: 'images/Ellipse 15.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              avatarimg(
                image: 'images/Ellipse 16.png',
                ontap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
