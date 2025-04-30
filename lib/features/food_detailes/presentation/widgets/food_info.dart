import 'package:egycal/features/favorites/favorites_page.dart';
import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget FoodInfo(FoodDetailsModel food) {
  final FavoritesController favController = Get.put(FavoritesController());

  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      Text(food.engname,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(food.arname,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  onTap: () => Get.to(() => FavoritesPage()),
                ),
                Text("${food.calories} cal",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700])),
              ],
            ),
          )
        ],
      ),
      Positioned(
        top: 5,
        right: 5,
        child: Obx(() => IconButton(
              icon: Icon(
                size: 27,
                favController.isFavorite(food)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                favController.toggleFavorite(food);
              },
            )),
      ),
    ],
  );
}
