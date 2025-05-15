import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/navigation_buttons.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/create_avatar/presentation/avatar.dart';
import 'package:egycal/features/weight/presentation/widgets/weight_picker.dart';
import 'package:flutter/material.dart';

import '../../../goal/models/additional_user_information.dart';

class Weight extends StatefulWidget {
  const Weight({
    super.key,
    required this.additionalUserInformationModel,
  });

  final AdditionalUserInformation additionalUserInformationModel;

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 50, right: 50),
                child: Center(
                  child: CustomText(
                      tittle: "What's your weight ?",
                      description:
                          "The more you weigh, the more \n      calories your body burns"),
                ),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 25,
              ),
              //weight picker
              Padding(
                padding:
                    const EdgeInsets.only(left: 100, right: 52, bottom: 15),
                child: WeightPicker(),
              ),

              //Navigation buttons
              SizedBox(
                height: SizeConfig.defaultSize! * 24,
              ),
              NavigationButtons(onBack: () {
                Navigator.pop(context);
              }, onNext: () {
                // we are setting a fixed weight till mariam explains
                widget.additionalUserInformationModel.saveWeight(60);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Avatar(additionalUserInformationModel: widget.additionalUserInformationModel)));
              })
            ],
          ),
        ),
      ),
    );
  }
}
