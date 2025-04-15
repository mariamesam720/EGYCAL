import 'package:egycal/features/Home/presentation/widgets/calories_wheel.dart';
import 'package:flutter/material.dart';

class CalorieIntake extends StatelessWidget {
  const CalorieIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 356,
        height: 220.12,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0XFF42B5BF),
          border:Border.symmetric(),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your progress',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Carrois Gothic',
                    color: Colors.white
                  ),
                ),
                Text(
                  'Remaining = Goal-Food',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Carrois Gothic',
                    color: Colors.white
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10),
            child: SizedBox(
              width: 167.71,
              height: 162.74,
            child: Stack(
              fit: StackFit.expand,
              children: [
              CaloriesWheel()],)
            ),
          ),
      
          ],
        
        ),
    
        
    
    ),
    );
    
  }
}