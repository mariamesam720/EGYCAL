import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget FoodInfo(FoodDetailsModel food) {
  final FavoritesController favController = Get.put(FavoritesController());

  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF2B5E62), Color(0xFF438F95)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        food.engname,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  Text(
                    "${food.calories} cal",
                    style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7)),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Obx(() => IconButton(
                icon: Icon(
                  size: 30,
                  favController.isFavorite(food)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  favController.toggleFavorite(food);
                },
              )),
        ),
      ],
    ),
  );
}
