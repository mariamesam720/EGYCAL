import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/profile/presentation/widgets/bulletpoints.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          text: 'About app',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomText(tittle: 'EgyCal - an Android app developed and designed to assist you on your journey to track your calories.', description: ''),
              ),
              Text('We provide with all the necessary ',
              style:TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
              ) ,),
              Text(' features such as: ',
              style:TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
              ) ,),
              SizedBox(height: 15,),
              BulletPoint(text: 'Diary to log your meals and water intake'),
              SizedBox(height: 10),
              BulletPoint(text: 'Reports to keep a track on your weight'),
              SizedBox(height: 10),
              BulletPoint(text: 'Recipes to quickly come up with something to cook')

            ],
          ),
    );
  }
}
