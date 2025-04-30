import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/display_image.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/food_info.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/nutrition_table.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodDetailsModel food;
  const FoodDetailsPage({super.key,required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          FoodImageHeader(imagePath: food.imagePath),
          FoodInfo(food),
          BuildPieChart(food: food),
          Divider(thickness: 1, color: Colors.grey, indent: 12, endIndent: 12),
          NutritionTable(nutritionFacts: food.nutritionFacts),
        ],
      ),
    );
  }
}
