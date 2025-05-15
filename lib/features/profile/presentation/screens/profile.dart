import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/diary/presentation/widgets/avatar.dart';
import 'package:egycal/features/profile/presentation/screens/about_app.dart';
import 'package:egycal/features/profile/presentation/screens/contact_us.dart';
import 'package:egycal/features/profile/presentation/widgets/button.dart';
import 'package:egycal/features/profile/presentation/widgets/editable_cal.dart';
import 'package:egycal/features/profile/presentation/widgets/icon.dart';
import 'package:egycal/features/profile/presentation/widgets/red_icon.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:egycal/features/login/presentation/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  Future<void> _logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginPage());
    } catch (e) {
      print("Error signing out: $e");
      Get.snackbar("Logout Error", "Could not log out. Please try again.", snackPosition: SnackPosition.BOTTOM);
    }
  }

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
            image: 'images/Ellipse 11.png',
          )),
          const Text(
            'Ahmed',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
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
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: InfoRow(
              title: 'Calorie intake',
              value: '3500 Cal',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
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
                  MaterialPageRoute(builder: (context) => const ContactUs()));
            },
            tittle: 'Contact us',
          ),
          IconName(
            icon: Icons.info_outline_rounded,
            onpress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const AboutApp()));
            },
            tittle: 'About app',
          ),
          RedIcon(
            icon1: Icons.logout_outlined,
            name: 'Logout',
            onpressed: _logout,
          ),
        ],
      ),
    );
  }
}
