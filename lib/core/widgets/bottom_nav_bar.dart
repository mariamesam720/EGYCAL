import 'package:egycal/features/Home/presentation/widgets/home.dart';
import 'package:egycal/features/favorites/favorites_page.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:egycal/features/profile/presentation/screens/profile.dart';
import 'package:egycal/features/search/presentation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<FoodDetailsModel> allFoods = [
      FoodDetailsModel(
        engname: "Mahshi",
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
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: GNav(
          padding: EdgeInsets.all(16),
          backgroundColor: Color(0xFF152D2F),
          color: Colors.white,
          activeColor: Colors.white,
          textStyle: TextStyle(color: Colors.white),
          tabs: [
            GButton(
              gap: 8,
              icon: Icons.home_outlined,
              text: 'Home',
              onPressed: () {
                Get.to(() => Home());
              },
            ),
            GButton(
              icon: Icons.favorite_outline_outlined,
              text: 'Favoruites',
              onPressed: () {
                Get.to(FavoritesPage());
              },
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              onPressed: () {
                Get.to(() => SearchPage());
              },
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
              onPressed: () {
                Get.to(Profile());
              },
            ),
          ]),
    );
  }
}
