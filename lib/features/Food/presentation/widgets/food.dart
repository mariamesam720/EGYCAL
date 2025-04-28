import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: 'Food',
        onIconpress: () {
          Navigator.pop(context);
        },
        icon: Icons.arrow_back_ios,
      ),
    );
  }
}
