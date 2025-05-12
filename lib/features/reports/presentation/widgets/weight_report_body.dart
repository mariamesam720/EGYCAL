import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/reports/presentation/widgets/weight_line_chart.dart';
import 'package:egycal/features/reports/presentation/widgets/weight_record.dart';
import 'package:flutter/material.dart';


class WeightReportBody extends StatelessWidget{
  const WeightReportBody({super.key});

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
                "Weight",
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
            padding: const EdgeInsets.only(top:10,left: 36,right: 36),
            child:WeightLineChart(data: {1: 80, 1.5: 75, 1.75: 83, 2: 80, 2.5: 78, 3: 90})
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
        WeightRecord(date: DateTime.now(), weight: 81.5,),
        WeightRecord(date: DateTime.now(), weight: 82,),
        WeightRecord(date: DateTime.now(), weight: 83.5,),
        WeightRecord(date: DateTime.now(), weight: 91,),
      ],
    );
  }
}