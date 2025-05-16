import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:flutter/material.dart';

class BottomGramsInput extends StatefulWidget {
  final FoodDetailsModel food;

  const BottomGramsInput({super.key, required this.food});

  @override
  State<BottomGramsInput> createState() => _BottomGramsInputState();
}

class _BottomGramsInputState extends State<BottomGramsInput> {
  final TextEditingController gramsController = TextEditingController();
  double? calculatedCalories;

  void calculateCalories() {
    final grams = double.tryParse(gramsController.text);
    if (grams != null) {
      final calories = (widget.food.calories / 100) * grams;
      setState(() {
        calculatedCalories = calories;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text(
                  'servings:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: gramsController,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => calculateCalories(),
                    decoration: const InputDecoration(
                      
                      isDense: true,
                      contentPadding: EdgeInsets.only(bottom: 8),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 8),
                const Text("grams", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF152D2F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 18,
                    ),
                  ),
                  child: const Text("Done", style: TextStyle(fontSize: 16,color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
