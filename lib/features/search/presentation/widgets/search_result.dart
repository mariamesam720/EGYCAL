import 'package:egycal/features/food_detailes/presentation/food_detailes_page.dart';
import 'package:egycal/features/search/presentation/controller/search_controller.dart';
import 'package:egycal/core/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchResult extends StatelessWidget {
  final SearchControllerr searchController = Get.find();

  SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final results = searchController.filteredFoods;
        if (results.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Empty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text('Type a food name',style: TextStyle(color: Colors.grey,fontSize: 14),),

            ],
          );
        }
        return Expanded(
          child: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final food = results[index];
              return GestureDetector(
                onTap: () => Get.to(() => FoodDetailsPage(
                      food: food,
                    )),
                child: FoodCard(food: food),
              );
            },
          ),
        );
      },
    );
  }
}
