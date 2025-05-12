// lib/features/favorites/screens/favorites_page.dart
import 'package:egycal/core/widgets/food_card.dart';
import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesPage extends StatelessWidget {
  final FavoritesController favController = Get.find();

  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Favorites'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Obx(() {
          if (favController.favorites.isEmpty) {
            return const Center(child: Text("No favorites yet."));
          }

          return ListView.builder(
            itemCount: favController.favorites.length,
            itemBuilder: (context, index) {
              final food = favController.favorites[index];
              return FoodCard(food: food);
            },
          );
        }),
      ),
    );
  }
}
