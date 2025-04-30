class FoodDetailsModel {
  final String engname;
  final String arname;
  final String imagePath;
  final int calories;
  final double proteins;
  final double fats;
  final double carbs;
  final NutritionModel nutritionFacts;

  FoodDetailsModel({
    required this.engname,
    required this.arname,
    required this.imagePath,
    required this.calories,
    required this.proteins,
    required this.fats,
    required this.carbs,
    required this.nutritionFacts,
  });
}
class NutritionModel {
  final String servingSize;
  final double totalFat;
  final int calories;
  final double saturatedFat;
  final double transFat;
  final double polyunsaturatedFat;
  final double monounsaturatedFat;
  final double cholesterol;
  final double sodium;
  final double totalCarbohydrate;
  final double dietaryFiber;
  final double sugars;
  final double protein;
  final double calcium;
  final double iron;
  final double potassium;
  final double vitaminA;
  final double vitaminC;
  final double vitaminD;

  NutritionModel( {
    required this.calories,
    required this.servingSize,
    required this.totalFat,
    required this.saturatedFat,
    required this.transFat,
    required this.polyunsaturatedFat,
    required this.monounsaturatedFat,
    required this.cholesterol,
    required this.sodium,
    required this.totalCarbohydrate,
    required this.dietaryFiber,
    required this.sugars,
    required this.protein,
    required this.calcium,
    required this.iron,
    required this.potassium,
    required this.vitaminA,
    required this.vitaminC,
    required this.vitaminD,
  });
}
