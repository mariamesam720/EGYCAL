import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/weight/presentation/widgets/kg_inch.dart';
import 'package:flutter/material.dart';

class WeightPicker extends StatelessWidget {
  const WeightPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          
          child: TextField(
            
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder:
              UnderlineInputBorder( borderSide: BorderSide(color: Color(0xFF337277),)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF337289), width: 2), 
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 12),
            ),
          
          ),
          
        ),
        SizedBox(width: 20,),
        Expanded(child: unit()),
      ],
    );
  }
}