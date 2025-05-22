import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/features/add_food_user/presentation/widgets/food_prefrence.dart';
import 'package:egycal/features/add_food_user/provider/food_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddFood extends StatelessWidget {
  final Map<String, String> nutrientLabels = {
    'totalFat': 'Total Fat (g)',
    'saturatedFat': 'Saturated Fat (g)',
    'polyunsaturatedFat': 'Polyunsaturated Fat (g)',
    'monounsaturatedFat': 'Monounsaturated Fat (g)',
    'cholesterol': 'Cholesterol (mg)',
    'sodium': 'Sodium (mg)',
    'totalCarbs': 'Total Carbs (g)',
    'dietaryFiber': 'Fiber (g)',
    'sugar': 'Sugar (g)',
    'protein': 'Protein (g)',
    'vitaminD': 'Vitamin D (mg)',
    'calcium': 'Calcium (mg)',
    'iron': 'Iron (mg)',
    'potassium': 'Potassium (mg)',
    'vitaminA': 'Vitamin A (mg)',
    'vitaminC': 'Vitamin C (mg)',
  };

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodProvider>(context);

    return Scaffold(
      appBar: CustomAppbar(
          text: 'Add food',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(
                'Food name', (val) => provider.setBasicInfo('name', val)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSmallTextField('Calories',
                    (val) => provider.setBasicInfo('calories', val)),
                _buildSmallTextField('Proteins',
                    (val) => provider.setBasicInfo('proteins', val)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSmallTextField(
                    'Fats', (val) => provider.setBasicInfo('fats', val)),
                _buildSmallTextField(
                    'Carbs', (val) => provider.setBasicInfo('carbs', val)),
              ],
            ),
            const SizedBox(height: 20),

            ExpansionTile(
              title: Text("Optional Nutrients"),
              children: nutrientLabels.entries
                  .map((entry) => _buildTextField(entry.value, (val) {
                        provider.setNutrient(entry.key, val);
                      }))
                  .toList(),
            ),

            const SizedBox(height: 5),
            // Allergens & Dietary Info Section
          
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black,
              fontSize: 12,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF152D2F)),
                borderRadius: BorderRadius.circular(16))),
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildSmallTextField(String hint, Function(String) onChanged) {
    return SizedBox(
      width: 101,
      height: 42,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              color: Color(0xFF0D1220),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF152D2F)),
                borderRadius: BorderRadius.circular(16))),
        onChanged: onChanged,
      ),
    );
  }
}
