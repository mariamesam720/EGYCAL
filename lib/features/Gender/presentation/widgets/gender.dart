import 'package:egycal/core/widgets/custom_button.dart';
import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  
  const Gender({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //text
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
              child: CustomOutlinedButton('Male'),
            ),
            SizedBox(
              height: 25,
            ),
            CustomOutlinedButton('Female'),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 75,
              ),
              child: Row(
                children: [
                  CustomTextButton('Back'),
      
                ],
              ),
            )
          ],

          
        ),
      ),
    );
  }
}
