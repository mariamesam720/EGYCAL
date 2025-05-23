import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:flutter/material.dart';

class NutritionTable extends StatelessWidget {
  final NutritionModel nutritionFacts;
  const NutritionTable({super.key, required this.nutritionFacts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nutrition Facts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Serving Size',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('100gm' ,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Divider(),
          SizedBox(height: 10),
          buildNutritionRow('Total Fat', '${nutritionFacts.totalFat}g'),
          _buildNutritionRow(
              '  Saturated Fat', '${nutritionFacts.saturatedFat}g'),
          _buildNutritionRow('  Trans Fat', '${nutritionFacts.transFat}g'),
          _buildNutritionRow(
              '  Polyunsaturated Fat', '${nutritionFacts.polyunsaturatedFat}g'),
          _buildNutritionRow(
              '  Monounsaturated Fat', '${nutritionFacts.monounsaturatedFat}g'),
          Divider(),
          buildNutritionRow('Cholesterol', '${nutritionFacts.cholesterol}mg'),
          Divider(),
          buildNutritionRow('Sodium', '${nutritionFacts.sodium}mg'),
          Divider(),
          buildNutritionRow(
              'Total Carbohydrate', '${nutritionFacts.totalCarbohydrate}g'),
          _buildNutritionRow(
              '  Dietary Fiber', '${nutritionFacts.dietaryFiber}g'),
          _buildNutritionRow('  Sugars', '${nutritionFacts.sugars}g'),
          Divider(),
          buildNutritionRow('Protein', '${nutritionFacts.protein}g'),
          _buildNutritionRow('Calcium', '${nutritionFacts.calcium}mg'),
          _buildNutritionRow('Vitamin D', '${nutritionFacts.vitaminD}mg'),
          _buildNutritionRow('Iron', '${nutritionFacts.iron}mg'),
          _buildNutritionRow('Potassium', '${nutritionFacts.potassium}mg'),
          _buildNutritionRow('Vitamin A', '${nutritionFacts.vitaminA}mcg'),
          _buildNutritionRow('Vitamin C', '${nutritionFacts.vitaminC}mg'),
        ],
      ),
    );
  }

  Widget _buildNutritionRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildNutritionRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
