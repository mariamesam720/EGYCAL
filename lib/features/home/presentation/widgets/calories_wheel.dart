import 'package:egycal/features/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class CaloriesWheel extends StatefulWidget {
  const CaloriesWheel({super.key});

  @override
  State<CaloriesWheel> createState() => _CaloriesWheelState();
}

class _CaloriesWheelState extends State<CaloriesWheel> {
  @override

  Widget build(BuildContext context) {
  final provider = Provider.of<CaloriesProvider>(context);

    return CircularPercentIndicator(
    animation: true,
    animationDuration: 1000,
    radius: 85,
    lineWidth: 8,
    percent:provider.progressPercent.clamp(0.0, 1.0),
    progressColor: Colors.white,
    backgroundColor: Color(0xFFF337277),
    circularStrokeCap: CircularStrokeCap.round,
    center: SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(provider.remaining.toString(),
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 30,
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
    ),
    );
  }
}
