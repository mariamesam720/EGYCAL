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
        if (searchController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        final results = searchController.filteredFoods;
        if (results.isEmpty && searchController.searchText.value.isNotEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No results found.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text('Try a different search term.',style: TextStyle(color: Colors.grey,fontSize: 14),),
            ],
          );
        } else if (results.isEmpty && searchController.searchText.value.isEmpty) {
           return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Empty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text('Type a food name to search',style: TextStyle(color: Colors.grey,fontSize: 14),),

            ],
          );
        }
        return Expanded(
          child: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final food = results[index];
              return GestureDetector(
                child: FoodCard(food: food),
                onTap: () => Get.to(() => FoodDetailsPage(allFoods: results, selectedFood: food,)),
              );
            },
          ),
        );
      },
    );
  }
}
