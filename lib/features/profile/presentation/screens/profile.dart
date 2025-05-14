import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/circlea_avatar.dart';
import 'package:egycal/features/profile/presentation/screens/about_app.dart';
import 'package:egycal/features/profile/presentation/screens/contact_us.dart';
import 'package:egycal/features/profile/presentation/widgets/button.dart';
import 'package:egycal/features/profile/presentation/widgets/editable_cal.dart';
import 'package:egycal/features/profile/presentation/widgets/icon.dart';
import 'package:egycal/features/profile/presentation/widgets/red_icon.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          text: 'Profile',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
      body: Column(
        children: [
          Center(
              child: avatarimg(
            image: 'images/Ellipse 11.png', ontap: () {  },
          )),
          Text(
            'Ahmed',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Ahmed@gmail.com',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AccountButton(),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InfoRow(
              title: 'Calorie intake',
              value: '3500 Cal',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InfoRow(
              title: 'Weight Unit',
              value: 'Kilograms',
            ),
          ),
          //divider
          Container(
            color: Colors.black,
            width: 350,
            height: 1,
          ),
          //Icons
          IconName(
            icon: Icons.email_outlined,
            onpress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
            tittle: 'Contact us',
          ),
          IconName(
            icon: Icons.info_outline_rounded,
            onpress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutApp()));
            },
            tittle: 'About app',
          ),
          RedIcon(
            icon1: Icons.logout_outlined,
            name: 'Logout',
            onpressed: () {},
          ),
        ],
      ),
    );
  }
}
