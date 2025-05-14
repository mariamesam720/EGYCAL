import 'package:egycal/features/add_food_user/models/food_option.dart';
import 'package:flutter/material.dart';

class FoodContainProvider with ChangeNotifier {
  List<FoodOption> allergens = [
    FoodOption(name: 'Milk'),
    FoodOption(name: 'Egg'),
    FoodOption(name: 'Fish'),
    FoodOption(name: 'Nuts'),
    FoodOption(name: 'Soy'),
    FoodOption(name: 'Lactose'),
    FoodOption(name: 'Gluten'),
    FoodOption(name: 'Peanuts'),
    FoodOption(name: 'Shellfish'),
    FoodOption(name: 'Sesame'),
  ];

  List<FoodOption> suitableFor = [
    FoodOption(name: 'Vegetarian'),
    FoodOption(name: 'Vegan diets'),
  ];

  void toggleAllergen(int index) {
    allergens[index].value = !allergens[index].value;
    notifyListeners();
  }

  void toggleSuitable(int index) {
    suitableFor[index].value = !suitableFor[index].value;
    notifyListeners();
  }
}
