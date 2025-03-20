import 'package:egycal/core/widgets/Navigation_buttons.dart';

import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/signUp/presentation/screens/signUp_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gender extends StatefulWidget {
  final PageController controller;

  const Gender({super.key, required this.controller});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String selectedgender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBFB),
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
                isSelected: selectedgender == 'Male',
                onTap: () {
                  setState(() {
                    selectedgender = 'Male';
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Female',
              onTap: () {
                setState(() {
                  selectedgender = 'Female';
                });
              },
              isSelected: selectedgender == 'Female',
            ),
            SizedBox(
              height: 120,
            ),
            NavigationButtons(
                onBack: () {
                  Navigator.pop(context);
                },
                onNext: () {})
          ],
        ),
      ),
    );
  }
}
