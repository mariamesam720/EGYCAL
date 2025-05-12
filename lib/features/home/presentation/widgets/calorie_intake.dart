import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/Home/presentation/widgets/CustomClipper.dart';
import 'package:egycal/features/Home/presentation/widgets/calories_wheel.dart';
import 'package:flutter/material.dart';

class CalorieIntake extends StatelessWidget {
  const CalorieIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      
      clipper: Customclipper(),
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight!*0.4,
      
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
                        child: AvatarImage(image: "images/Ellipse 8.png",)),
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
                        fontSize: 20,
                        fontFamily: 'Carrois Gothic',
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
                        fontFamily: 'Carrois Gothic',
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
                        fontFamily: 'Carrois Gothic',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20,),
            child: SizedBox(
              width: 100,
              height: 162.74,
            child: CaloriesWheel()
            ),
          ),
      
          ],
        
        ),
      ),
    );
  }
}
