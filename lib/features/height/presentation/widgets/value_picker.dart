import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/height/presentation/widgets/centimeters.dart';
import 'package:egycal/features/height/presentation/widgets/meters.dart';
import 'package:flutter/material.dart';

class ValuePicker extends StatefulWidget {
  const ValuePicker({super.key});

  @override
  State<ValuePicker> createState() => _ValuePickerState();
}

class _ValuePickerState extends State<ValuePicker> {
  final FixedExtentScrollController meterController =
      FixedExtentScrollController(initialItem: 1);
  final FixedExtentScrollController cmController =
      FixedExtentScrollController(initialItem: 70);
   String meterUnit = 'm';
  String cmUnit = 'cm';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
           
          children: [
            //meters wheel
            Expanded(
              child: SizedBox(
                width: SizeConfig.defaultSize!*25,
                child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.003,
                    diameterRatio: 1.5,
                    physics: AlwaysScrollableScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                        
                        builder: (context, index) {
                          return Meters(number: index);
                        },
                        childCount: (meterUnit == 'm')  ? 3  : 8, )),
              ),
            ),
            
             Expanded(
               child: DropdownButtonHideUnderline(
                 child: DropdownButton<String>(
                  padding: EdgeInsets.only(right: 30),
                  iconSize: 22,
                  iconEnabledColor: Color(0xFF0D1220),
                  
                          value: meterUnit,
                          items: ['m', 'feet'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child:
                                  Text(value, 
                                  style: const TextStyle
                                  (fontSize: 16,fontFamily: 'Inter',color: Color(0xFF337277))),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              meterUnit = value!;
                              meterController.jumpToItem(0);
                            });
                          },
                        ),
               ),
             ),
      
            //cm wheel
            Expanded(
              child: SizedBox(
                width: SizeConfig.defaultSize!*10,
                child: ListWheelScrollView.useDelegate(
                    itemExtent: 40,
                    perspective: 0.003,
                    diameterRatio: 1.5,
                    physics: AlwaysScrollableScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                        childCount: (cmUnit=='cm')? 100:12,
                        builder: (context, index) {
                          return Centimeter(cm: index);
                        })),
              ),
            ),
             Expanded(
              
               child: DropdownButtonHideUnderline(
                 child: DropdownButton<String>(
                         padding: EdgeInsets.only(right: 30),
                         iconSize: 22,
                  iconEnabledColor: Color(0xFF0D1220),
                  
                          value: cmUnit,
                          items: ['cm', 'in'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child:
                                  Text(value, style: const TextStyle(fontSize: 16, fontFamily: 'Inter',color: Color(0xFF337277))),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              cmUnit = value!;
                              cmController.jumpToItem(0);
                            });
                          },
                        ),
               ),
             ),
                      
          ],
                ),
                
        ),
        
        ]
    );
  }
}
