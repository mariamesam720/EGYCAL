import 'package:egycal/features/diary/presentation/widgets/nav_bar.dart';
import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/food_detailes/presentation/food_detailes_page.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:egycal/core/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodListPage extends StatelessWidget {
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
  ];

  FoodListPage({super.key});

  final FavoritesController favController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Food'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final food = foodList[index];
          return GestureDetector(
            onTap: () => Get.to(() => FoodDetailsPage(
                  allFoods: foodList,
                  selectedFood: food,
                )),
            child: FoodCard(food: food),
          );
        },
      ),
    );
  }
}
