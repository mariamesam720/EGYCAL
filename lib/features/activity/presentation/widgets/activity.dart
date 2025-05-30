import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/core/widgets/navigation_buttons.dart';
import 'package:egycal/features/goal/models/additional_user_information.dart';
import 'package:egycal/features/height/presentation/widgets/height.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({
    super.key,
    required this.additionalUserInformationModel,
  });

  final AdditionalUserInformation additionalUserInformationModel;

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
                  tittle: "How active are you??",
                  description:
                      "A sedentary person burns fewer \n calories than an active person"),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 15,
            ),
            CustomOutlinedButton(
              text: 'Sedentary',
              isSelected: selectedgoal == 'Sedentary',
              onTap: () {
                setState(() {
                  selectedgoal = 'Sedentary';
                  widget.additionalUserInformationModel.saveActivity('Sedentary');
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Low Active',
              onTap: () {
                setState(() {
                  selectedgoal = 'Low Active';
                  widget.additionalUserInformationModel.saveActivity('Low Active');
                });
              },
              isSelected: selectedgoal == 'Low Active',
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Active',
              onTap: () {
                setState(() {
                  selectedgoal = 'Active';
                  widget.additionalUserInformationModel.saveActivity('Active');
                });
              },
              isSelected: selectedgoal == 'Active',
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Very Active',
              onTap: () {
                setState(() {
                  selectedgoal = 'Very Active';
                  widget.additionalUserInformationModel.saveActivity('Very Active');
                });
              },
              isSelected: selectedgoal == 'Very Active',
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),

            NavigationButtons(onBack: () {
              Navigator.pop(context);
            }, onNext: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Height(additionalUserInformationModel: widget.additionalUserInformationModel,)));
            })
          ],
        ),
      ),
    );
  }
}
