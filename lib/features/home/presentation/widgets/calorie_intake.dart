import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/Home/presentation/widgets/CustomClipper.dart';
import 'package:egycal/features/Home/presentation/widgets/calories_wheel.dart';
import 'package:egycal/features/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalorieIntake extends StatelessWidget {
  const CalorieIntake({super.key});

  @override
  Widget build(BuildContext context) {
    final caloriesProvider = Provider.of<CaloriesProvider>(context);
    final percent = (caloriesProvider.progressPercent * 100).toStringAsFixed(0);
    final baseGoal = caloriesProvider.goal.toInt(); 
    return ClipPath(
      
      clipper: Customclipper(),
      child: Container(
        width: SizeConfig.screenWidth,
        height: 300,
      
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Color(0xFF152D2F),Color(0xFF438F95)],
           begin: Alignment.bottomRight,
           end: Alignment.topRight,
          )
        ),
        child: Row(
           children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF152D2F),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: AvatarImage(image: "images/Ellipse 8.png", ontap: () {  },)),
                        SizedBox(width: 8,),
                      Text("Good morning , Ahmed", style: TextStyle(
                        color: Colors.white
                      ),)
                      ],
                    
                    ),
              
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Your progress',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$percent %',
                      style: TextStyle(
                        fontSize: 55,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                  
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 10
                    ),
                    child: Text(
                      'Remaining = Goal-Food',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Base Goal',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$baseGoal',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(
            width: 80,
            height: 170,
          child: CaloriesWheel()
          ),
      
          ],
        
        ),
      ),
    );
  }
}
