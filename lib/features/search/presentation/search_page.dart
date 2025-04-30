import 'package:egycal/features/search/presentation/controller/search_controller.dart';
import 'package:egycal/features/search/presentation/widgets/search_field.dart';
import 'package:egycal/features/search/presentation/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../food_detailes/presentation/models/food_details_mode.dart';

class SearchPage extends StatelessWidget {
  final List<FoodDetailsModel> allFoods;

  SearchPage({super.key, required this.allFoods});

  final SearchControllerr searchController = Get.put(SearchControllerr());

  @override
  Widget build(BuildContext context) {
    searchController.setFoodList(allFoods);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text(
          'Search food',
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[600],
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(),
            const SizedBox(height: 30),
            Expanded(child: SearchResult()),
          ],
        ),
      ),
    );
  }
}
