import 'package:egycal/features/add_food_user/models/food_option.dart';
import 'package:egycal/features/add_food_user/provider/food_contain_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class AddFoodPreferencesScreen extends StatelessWidget {
  const AddFoodPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodContainProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "This food contains :",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildOptionsGrid(
          options: provider.allergens,
          onTap: provider.toggleAllergen,
        ),
        const SizedBox(height: 16),
        const Text(
          "This food is suitable for :",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildOptionsGrid(
          options: provider.suitableFor,
          onTap: provider.toggleSuitable,
        ),
      ],
    );
  }

  Widget _buildOptionsGrid({
    required List<FoodOption> options,
    required Function(int) onTap,
  }) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: options.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        final item = options[index];
        return InkWell(
          onTap: () => onTap(index),
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: item.value ? Colors.green : Colors.red,
                ),
                child: Icon(
                  item.value ? Icons.check : Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  item.name,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
