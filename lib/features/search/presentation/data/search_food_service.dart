import 'dart:convert';
import 'package:http/http.dart' as http;

const String apiKey = 'fbMWWXEci19bKBbC9WlPfhaZeayGiZt05WgZuAj3';
const String username = '273df33156734ae4a60a3efbcbb9edde';
const String password = 'c9258b2d8e1c48629c2ae7c97da57985';

class FoodItem {
  final int foodId;
  final String enName;
  final double? calories;
  final double? fatPercentage;
  final double? carbPercentage;
  final double? proteinPercentage;
  final double? totalFat;
  final double? saturatedFat;
  final double? polyunsaturatedFat;
  final double? monounsaturatedFat;
  final double? cholesterol;
  final double? sodium;
  final double? totalCarb;
  final double? dietaryFiber;
  final double? sugars;
  final double? protein;
  final double? vitaminD;
  final double? calcium;
  final double? iron;
  final double? potassium;
  final double? vitaminA;
  final double? vitaminC;

  FoodItem({
    required this.foodId,
    required this.enName,
    this.calories,
    this.fatPercentage,
    this.carbPercentage,
    this.proteinPercentage,
    this.totalFat,
    this.saturatedFat,
    this.polyunsaturatedFat,
    this.monounsaturatedFat,
    this.cholesterol,
    this.sodium,
    this.totalCarb,
    this.dietaryFiber,
    this.sugars,
    this.protein,
    this.vitaminD,
    this.calcium,
    this.iron,
    this.potassium,
    this.vitaminA,
    this.vitaminC,
  });
}

class SearchFoodService {
  static const String _baseUrl = 'https://api.nal.usda.gov/fdc/v1/foods/search';

  Future<List<FoodItem>> searchFood(String query) async {
    final String credentials = base64Encode(utf8.encode('$username:$password'));
    final Uri url = Uri.parse("$_baseUrl?api_key=$apiKey");

    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Basic $credentials',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'query': query}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<FoodItem> items = [];

      final foods = data['foods'] as List<dynamic>;
      for (var item in foods.take(3)) {
        double? getNutrient(String name) {
          try {
            final nutrient = item['foodNutrients'].firstWhere(
                  (n) => n['nutrientName'] == name,
              orElse: () => null,
            );
            return nutrient != null ? (nutrient['value'] as num?)?.toDouble() : null;
          } catch (_) {
            return null;
          }
        }

        final calories = getNutrient('Energy');
        final totalFat = getNutrient('Total lipid (fat)');
        final totalCarb = getNutrient('Carbohydrate, by difference');
        final protein = getNutrient('Protein');

        final fatPct = (calories != null && totalFat != null)
            ? (totalFat * 9 / calories) * 100
            : null;
        final carbPct = (calories != null && totalCarb != null)
            ? (totalCarb * 4 / calories) * 100
            : null;
        final proteinPct = (calories != null && protein != null)
            ? (protein * 4 / calories) * 100
            : null;

        items.add(FoodItem(
          foodId: item['fdcId'],
          enName: item['description'],
          calories: calories,
          fatPercentage: fatPct,
          carbPercentage: carbPct,
          proteinPercentage: proteinPct,
          totalFat: totalFat,
          saturatedFat: getNutrient('Fatty acids, total saturated'),
          polyunsaturatedFat: getNutrient('Fatty acids, total polyunsaturated'),
          monounsaturatedFat: getNutrient('Fatty acids, total monounsaturated'),
          cholesterol: getNutrient('Cholesterol'),
          sodium: getNutrient('Sodium, Na'),
          totalCarb: totalCarb,
          dietaryFiber: getNutrient('Fiber, total dietary'),
          sugars: getNutrient('Sugars, total including NLEA'),
          protein: protein,
          vitaminD: getNutrient('Vitamin D (D2 + D3)'),
          calcium: getNutrient('Calcium, Ca'),
          iron: getNutrient('Iron, Fe'),
          potassium: getNutrient('Potassium, K'),
          vitaminA: getNutrient('Vitamin A, RAE'),
          vitaminC: getNutrient('Vitamin C, total ascorbic acid'),
        ));
      }

      return items;
    } else {
      throw Exception('Failed to load food data: ${response.statusCode}');
    }
  }

}
