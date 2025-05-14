import 'package:flutter/material.dart';

class FoodProvider extends ChangeNotifier {
  String foodName = '';
  String calories = '';
  String proteins = '';
  String fats = '';
  String carbs = '';

  Map<String, String> nutrients = {};

  List<String> allergens = [];
  List<String> suitableFor = [];

  void setBasicInfo(String key, String value) {
    switch (key) {
      case 'name':
        foodName = value;
        break;
      case 'calories':
        calories = value;
        break;
      case 'proteins':
        proteins = value;
        break;
      case 'fats':
        fats = value;
        break;
      case 'carbs':
        carbs = value;
        break;
    }
    notifyListeners();
  }

  void setNutrient(String key, String value) {
    nutrients[key] = value;
    notifyListeners();
  }

  void toggleAllergen(String item) {
    if (allergens.contains(item)) {
      allergens.remove(item);
    } else {
      allergens.add(item);
    }
    notifyListeners();
  }

  void toggleSuitability(String item) {
    if (suitableFor.contains(item)) {
      suitableFor.remove(item);
    } else {
      suitableFor.add(item);
    }
    notifyListeners();
  }
}
