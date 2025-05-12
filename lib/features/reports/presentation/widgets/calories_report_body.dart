import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/reports/presentation/widgets/calories_line_chart.dart';
import 'package:egycal/features/reports/presentation/widgets/calories_record.dart';
import 'package:flutter/material.dart';


class CaloriesReportBody extends StatelessWidget{
  const CaloriesReportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              SizedBox(
                  width: 50,
                  height: 50,
                  child: AvatarImage(image: "images/Ellipse 8.png",
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left:9),
                child: Text(
                  "Ahmed",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:36),
          child: Row(
            children: [
              Text(
                "Calories",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 36,top:10, right: 36),
            child:CaloriesLineChart(data: {11: 1250, 11.5: 1000, 12: 1230, 12.5: 1260, 13: 1240, 14: 1200, 16:1750, 16.5: 1650, 17:1800})
        ),
        Padding(
          padding: const EdgeInsets.only(left:36,top:24,bottom: 24),
          child: Row(
            children: [
              Text(
                "Records",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
        WeightRecord(date: DateTime.now(), calories: 2000,),
        WeightRecord(date: DateTime.now(), calories: 2050,),
        WeightRecord(date: DateTime.now(), calories: 2500,),
        WeightRecord(date: DateTime.now(), calories: 2200,),
        WeightRecord(date: DateTime.now(), calories: 1900,),
      ],
    );
  }
}