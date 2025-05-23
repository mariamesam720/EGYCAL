import 'package:egycal/features/search/presentation/data/search_food_service.dart';

class FoodDetailsModel {
  final String engname;
  final String? imagePath;
  final double? calories;
  final double? proteins;
  final double? fats;
  final double? carbs;
  final NutritionModel nutritionFacts;

  FoodDetailsModel({
    required this.engname,
    this.imagePath,
    this.calories,
    this.proteins,
    this.fats,
    this.carbs,
    required this.nutritionFacts,
  });

  factory FoodDetailsModel.fromFoodItem(FoodItem item, {String? imagePath}) {
    return FoodDetailsModel(
      engname: item.enName,
      imagePath: imagePath,
      calories: item.calories,
      proteins: item.protein,
      fats: item.totalFat,
      carbs: item.totalCarb,
      nutritionFacts: NutritionModel.fromFoodItem(item),
    );
  }
}

class NutritionModel {
  final String? servingSize;
  final double totalFat;
  final int calories;
  final double? saturatedFat;
  final double? transFat;
  final double? polyunsaturatedFat;
  final double? monounsaturatedFat;
  final double? cholesterol;
  final double? sodium;
  final double? totalCarbohydrate;
  final double? dietaryFiber;
  final double? sugars;
  final double? protein;
  final double? calcium;
  final double? iron;
  final double? potassium;
  final double? vitaminA;
  final double? vitaminC;
  final double? vitaminD;

  NutritionModel({
    required this.calories,
    this.servingSize,
    required this.totalFat,
    this.saturatedFat,
    this.transFat,
    this.polyunsaturatedFat,
    this.monounsaturatedFat,
    this.cholesterol,
    this.sodium,
    this.totalCarbohydrate,
    this.dietaryFiber,
    this.sugars,
    this.protein,
    this.calcium,
    this.iron,
    this.potassium,
    this.vitaminA,
    this.vitaminC,
    this.vitaminD,
  });

  factory NutritionModel.fromFoodItem(FoodItem item) {
    return NutritionModel(
      calories: item.calories?.round() ?? 0,
      totalFat: item.totalFat ?? 0.0,
      saturatedFat: item.saturatedFat,
      polyunsaturatedFat: item.polyunsaturatedFat,
      monounsaturatedFat: item.monounsaturatedFat,
      cholesterol: item.cholesterol,
      sodium: item.sodium,
      totalCarbohydrate: item.totalCarb,
      dietaryFiber: item.dietaryFiber,
      sugars: item.sugars,
      protein: item.protein,
      calcium: item.calcium,
      iron: item.iron,
      potassium: item.potassium,
      vitaminA: item.vitaminA,
      vitaminC: item.vitaminC,
      vitaminD: item.vitaminD,
    );
  }
}
