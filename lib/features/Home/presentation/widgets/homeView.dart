import 'package:egycal/core/widgets/bottom_nav_bar.dart';
import 'package:egycal/features/Home/presentation/widgets/calorie_intake.dart';
import 'package:egycal/features/Home/presentation/widgets/cards.dart';
import 'package:egycal/features/diary/presentation/diary_page.dart';
import 'package:egycal/features/food/presentation/food_page.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<FoodDetailsModel> foodList = [
    FoodDetailsModel(
      engname: "Mahshi",
      arname: 'محشي',
      imagePath: "images/mahshi.png",
      calories: 164,
      proteins: 5,
      fats: 61,
      carbs: 34,
      nutritionFacts: NutritionModel(
        servingSize: '100 g',
        totalFat: 19.3,
        saturatedFat: 7.308,
        transFat: 0.0,
        polyunsaturatedFat: 1.639,
        monounsaturatedFat: 9.145,
        cholesterol: 39,
        sodium: 1108,
        totalCarbohydrate: 2.60,
        dietaryFiber: 0.0,
        sugars: 0.0,
        protein: 11.50,
        calcium: 11,
        iron: 0.66,
        potassium: 156,
        vitaminA: 0,
        vitaminC: 0,
        vitaminD: 0,
        calories: 164,
      ),
    ),
    FoodDetailsModel(
      engname: "Mahshi2",
      arname: '2محشي',
      imagePath: "images/mahshi.png",
      calories: 200,
      proteins: 5,
      fats: 61,
      carbs: 34,
      nutritionFacts: NutritionModel(
        servingSize: '100 g',
        totalFat: 19.3,
        saturatedFat: 7.308,
        transFat: 0.0,
        polyunsaturatedFat: 1.639,
        monounsaturatedFat: 9.145,
        cholesterol: 39,
        sodium: 1108,
        totalCarbohydrate: 2.60,
        dietaryFiber: 0.0,
        sugars: 0.0,
        protein: 11.50,
        calcium: 11,
        iron: 0.66,
        potassium: 156,
        vitaminA: 0,
        vitaminC: 0,
        vitaminD: 0,
        calories: 164,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CalorieIntake(),
          GridviewCards(context)
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  Flexible GridviewCards(BuildContext context) {
    return Flexible(
          child: GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
            children: [
              Cards(
                icon: Icons.fastfood,
                label: 'food',
                onTap: () {
                  Get.to(() => FoodPage(allFoods: foodList,));
                },
              ),
              Cards(
                icon: Icons.bar_chart,
                label: 'Reports',
                onTap: () {},
              ),
              Cards(
                icon: Icons.add_circle_outline,
                label: 'Add',
                onTap: () {},
              ),
              Cards(
                icon: Icons.pie_chart_outline,
                label: 'Diary',
                onTap: () {
                  Get.to(() => DiaryPage());
                },
              ),
            ],
          ),
        );
  }
}

