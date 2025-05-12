import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/Navigation_buttons.dart';

import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/activity/presentation/widgets/Activity.dart';
import 'package:egycal/features/height/presentation/widgets/height.dart';
import 'package:egycal/features/signUp/presentation/screens/signUp_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Goal extends StatefulWidget {

  const Goal({super.key, });

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  String selectedgoal = 'lose weight';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Ensure the Column takes minimum space
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomText(
                  tittle: "What’s your goal?",
                  description: "We will calculate daily calories \n      according to your goal"),
            ),
            SizedBox(
              height: SizeConfig.defaultSize!*18,
            ),
            CustomOutlinedButton(
              text: 'Lose Weight',
              isSelected: selectedgoal == 'Lose Weight',
              onTap: () {
                setState(() {
                  selectedgoal = 'Lose Weight';
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Keep weight',
              onTap: () {
                setState(() {
                  selectedgoal = 'Keep weight';
                });
              },
              isSelected: selectedgoal == 'Keep weight',
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Gain Weight',
              onTap: () {
                setState(() {
                  selectedgoal = 'Gain Weight';
                });
              },
              isSelected: selectedgoal == 'Gain Weight',
            ),
            SizedBox(
              height: SizeConfig.defaultSize!*12,
            ),
            NavigationButtons(onBack: () {
              Navigator.pop(context);
            }, onNext: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Activity()));
            })
          ],
        ),
      ),
    );
  }
}
