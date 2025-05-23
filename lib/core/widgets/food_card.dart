import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  final FoodDetailsModel food;
  FoodCard({super.key, required this.food});
  final FavoritesController favController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: food.imagePath != null && food.imagePath!.isNotEmpty
              ? Image.asset(
                  food.imagePath!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 180,
                )
              : Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.grey[300], // Placeholder color
                  child: Icon(
                    Icons.restaurant_menu, // Placeholder icon
                    color: Colors.grey[600],
                    size: 60,
                  ),
                ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF152D2F).withOpacity(0.9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.engname,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('${food.calories!.toStringAsFixed(1)} cal',
                        style: const TextStyle(color: Colors.white70)),
                  ],
                ),
                Obx(() => IconButton(
                      icon: Icon(
                        favController.isFavorite(food)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        favController.toggleFavorite(food);
                      },
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
