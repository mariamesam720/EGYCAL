import 'package:egycal/features/diary/presentation/models/nutrient_row_model.dart';
import 'package:egycal/features/diary/presentation/widgets/nutrient_row.dart';
import 'package:flutter/material.dart';

class NutrientsIndicator extends StatelessWidget {
  const NutrientsIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: Colors.white,
      color: Colors.grey[50],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: NutrientRow(
                    nutrientRowModel: NutrientRowModel(
                        label: 'Proteins',
                        value: 150,
                        goal: 225,
                        color: Colors.red),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  //
                  child: NutrientRow(
                    nutrientRowModel: NutrientRowModel(
                        label: 'Fats',
                        value: 150,
                        goal: 225,
                        color: Colors.orange),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: NutrientRow(
                    nutrientRowModel: NutrientRowModel(
                        label: 'Carbs',
                        value: 150,
                        goal: 225,
                        color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            NutrientRow(
              nutrientRowModel: NutrientRowModel(
                  label: 'Calories',
                  value: 150,
                  goal: 225,
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
