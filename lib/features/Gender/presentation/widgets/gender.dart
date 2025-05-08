import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/Navigation_buttons.dart';

import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/Gender/provider/gender_provider.dart';
import 'package:egycal/features/goal/presentation/widgets/goal.dart';
import 'package:egycal/features/height/presentation/widgets/height.dart';
import 'package:egycal/features/signUp/presentation/screens/signUp_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Gender extends StatefulWidget {
  final PageController controller;

  const Gender({super.key, required this.controller});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    final genderProvider = Provider.of<GenderProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Ensure the Column takes minimum space
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomText(
                  tittle: "What’s your gender?",
                  description: "Male bodies need more calories"),
            ),
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: CustomOutlinedButton(
                text: 'Male',
                isSelected: genderProvider.isSelected(GenderProvider.maleGender),
                onTap: ()=>genderProvider.setGender(GenderProvider.maleGender)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Female',
              onTap: () =>genderProvider.setGender(GenderProvider.femaleGender),
              isSelected: genderProvider.isSelected(GenderProvider.femaleGender)
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 20,
            ),
            NavigationButtons(onBack: () {
              Navigator.pop(context);
            }, onNext: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Goal()));
            })
          ],
        ),
      ),
    );
  }
}
