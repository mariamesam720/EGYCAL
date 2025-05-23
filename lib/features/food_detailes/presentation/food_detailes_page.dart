import 'package:egycal/features/food_detailes/presentation/models/dietary_info_model.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/dietary_info.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/display_image.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/food_info.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/nutrition_box.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/nutrition_table.dart';
import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  final List<FoodDetailsModel> allFoods;
  final FoodDetailsModel selectedFood;

  const FoodDetailsPage({
    super.key,
    required this.allFoods,
    required this.selectedFood,
  });

  @override
  Widget build(BuildContext context) {
    final info = DietaryInfoModel(
    isMilkFree: true,
    isEggFree: false,
    isFishFree: true,
    isNutsFree: true,
    isSoyFree: true,
    isLactoseFree: true,
    isGlutenFree: true,
    isPeanutsFree: true,
    isShellfishFree: true,
    isSesameFree: true,
    isVegetarian: false,
    isVegan: false,
  ); // same as before

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          FoodImageHeader(imagePath: selectedFood.imagePath),
          FoodInfo(selectedFood),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NutrientBox(foodDetailsModel: selectedFood),
            ],
          ),
          Divider(thickness: 1, color: Colors.grey, indent: 12, endIndent: 12),
          Expanded(
            child: ListView(
              children: [
                NutritionTable(nutritionFacts: selectedFood.nutritionFacts),
                Divider(thickness: 1, color: Colors.grey, indent: 12, endIndent: 12),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

