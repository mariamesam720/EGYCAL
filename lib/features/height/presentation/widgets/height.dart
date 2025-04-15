import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/Navigation_buttons.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/height/presentation/widgets/value_picker.dart';
import 'package:egycal/features/weight/presentation/widgets/weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 50, right: 50),
            child: CustomText(
                tittle: "What's your height ?",
                description:
                    "The taller you are, the more \n  calories your body needs"),
          ),
          SizedBox(
            height: SizeConfig.defaultSize!*20,
          ),
          //height picker
          Center(
            child: SizedBox(
              height: SizeConfig.defaultSize!*8,
            
              child: ValuePicker()),
          ),
          

          //Navigation buttons
          SizedBox(
            height: SizeConfig.defaultSize!*25,
          ),
          NavigationButtons(onBack: () {
            Navigator.pop(context);
          }, onNext: () {
            Navigator.push(
                (context), MaterialPageRoute(builder: (context) => Weight()));
          })
        ],
      ),
    );
  }
}
