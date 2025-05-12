import 'package:egycal/core/utilis/size_config.dart';
import 'package:flutter/material.dart';

class Unit extends StatefulWidget {
  const Unit({super.key});

  @override
  State<Unit> createState() => _unitState();
}

class _unitState extends State<Unit> {
  String dropdownvalue = 'Kg';
  var items = ['Kg', 'ib'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize!*4,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          padding:EdgeInsets.only(right: 40) ,
            value: dropdownvalue,
            iconEnabledColor: Color(0xFF0D1220),
            iconSize: 20,
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      color: Color(0xFF337277),
                      fontWeight: FontWeight.normal
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            }),
      ),
    );
  }
}
