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

  int selectedMeter = 1;
  int selectedCm = 70;

  double get heightInCm {
    if (meterUnit == 'm') {
      return selectedMeter * 100 + selectedCm.toDouble();
    } else {
      return (selectedMeter * 30.48) + (selectedCm * 2.54);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: SizeConfig.defaultSize! * 25,
                child: ListWheelScrollView.useDelegate(
                  controller: meterController,
                  itemExtent: 50,
                  perspective: 0.003,
                  diameterRatio: 1.5,
                  physics: const AlwaysScrollableScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedMeter = index;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) {
                      return Meters(number: index);
                    },
                    childCount: (meterUnit == 'm') ? 3 : 8,
                  ),
                ),
              ),
            ),

            // Meters/Feet Dropdown
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  padding: const EdgeInsets.only(right: 30),
                  iconSize: 22,
                  iconEnabledColor: const Color(0xFF0D1220),
                  value: meterUnit,
                  items: ['m', 'feet'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          color: Color(0xFF337277),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      meterUnit = value!;
                      meterController.jumpToItem(0);
                      selectedMeter = 0;
                    });
                  },
                ),
              ),
            ),

            // CM/Inches Wheel
            Expanded(
              child: SizedBox(
                width: SizeConfig.defaultSize! * 10,
                child: ListWheelScrollView.useDelegate(
                  controller: cmController,
                  itemExtent: 40,
                  perspective: 0.003,
                  diameterRatio: 1.5,
                  physics: const AlwaysScrollableScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedCm = index;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) {
                      return Centimeter(cm: index);
                    },
                    childCount: (cmUnit == 'cm') ? 100 : 12,
                  ),
                ),
              ),
            ),

            // CM/Inches Dropdown
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  padding: const EdgeInsets.only(right: 30),
                  iconSize: 22,
                  iconEnabledColor: const Color(0xFF0D1220),
                  value: cmUnit,
                  items: ['cm', 'in'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          color: Color(0xFF337277),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      cmUnit = value!;
                      cmController.jumpToItem(0);
                      selectedCm = 0;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}


