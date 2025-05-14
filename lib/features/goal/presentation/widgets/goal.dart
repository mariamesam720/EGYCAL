import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/navigation_buttons.dart';
import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/Activity/presentation/widgets/activity.dart';
import 'package:egycal/features/goal/provider/goal_provider.dart';
import 'package:egycal/features/height/presentation/widgets/height.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Goal extends StatefulWidget {
  const Goal({
    super.key,
  });

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  String selectedgoal = 'lose weight';
  @override
  Widget build(BuildContext context) {
    final goalProvider = Provider.of<GoalProvider>(context);
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
                  description:
                      "We will calculate daily calories \n      according to your goal"),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 18,
            ),
            CustomOutlinedButton(
              text: 'Lose Weight',
              isSelected: goalProvider.isSelected('Lose weight'),
              onTap: ()=>goalProvider.setGoal('Lose weight')
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Keep weight',
              isSelected: goalProvider.isSelected('Keep weight'),
              onTap: ()=>goalProvider.setGoal('Keep weight'),
            ),
            SizedBox(
              height: 20,
            ),
            CustomOutlinedButton(
              text: 'Gain Weight',
              isSelected:goalProvider.isSelected('Gain Weight'),
              onTap: ()=>goalProvider.setGoal('Gain Weight'),
              
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 12,
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
