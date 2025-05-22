import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeightRecord extends StatelessWidget{
  final DateTime date;
  final double weight;
  const WeightRecord({super.key, required this.date, required this.weight});
  String get formattedDate => DateFormat('MMM d, y').format(date);
  String get formattedWeight {
    double rounded = double.parse(weight.toStringAsFixed(2));
    return rounded % 1 == 0 ? '${rounded.toInt()} kg' : '$rounded kg';
  }
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left:36, right: 36, bottom:10),
      child: Container(
          width: 300,
          height: 39,
          decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:15),
            child: Row(
              
              children: [
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:150),
                  child: Container(
                    width: 60,
                    height: 15,
                    alignment: Alignment.center,
                    child: Text(
                      formattedWeight,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}