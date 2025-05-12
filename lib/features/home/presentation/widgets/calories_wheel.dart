import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CaloriesWheel extends StatefulWidget {
  const CaloriesWheel({super.key});

  @override
  State<CaloriesWheel> createState() => _CaloriesWheelState();
}

class _CaloriesWheelState extends State<CaloriesWheel> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
    animation: true,
    animationDuration: 1000,
    radius: 150,
    lineWidth: 10,
    percent: 0.7,
    progressColor: Colors.white,
    backgroundColor: Color(0xFFF337277),
    circularStrokeCap: CircularStrokeCap.round,
    center: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text('1350',
          style: TextStyle(
            fontFamily: 'Carter One',
            fontSize: 40,
            color: Colors.white

          ),
          ),
        ),
        Text('Remaining'
        ,
          style: TextStyle(
            fontFamily: 'Carrois Gothic',
            fontSize: 15,
            color: Colors.white,
        ),
        )
      ],
    ),
    );
  }
}
