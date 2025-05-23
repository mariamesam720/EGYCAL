import 'package:egycal/features/search/presentation/data/search_food_service.dart';
import 'package:get/get.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';

class SearchControllerr extends GetxController {
  final SearchFoodService _searchFoodService = SearchFoodService();
  RxString searchText = ''.obs;
  RxList<FoodDetailsModel> filteredFoods = <FoodDetailsModel>[].obs;
  RxBool isLoading = false.obs;

  void updateSearchText(String value) {
    searchText.value = value;
    if (value.isEmpty) {
      filteredFoods.clear();
    } else {
      fetchAndFilterFoods(value);
    }
  }

  Future<void> fetchAndFilterFoods(String query) async {
    if (query.isEmpty) {
      filteredFoods.clear();
      return;
    }
    isLoading.value = true;
    try {
      final List<FoodItem> foodItems = await _searchFoodService.searchFood(query);
      filteredFoods.value = foodItems.map((item) => FoodDetailsModel.fromFoodItem(item)).toList();
    } catch (e) {
      print("Error fetching food: $e");
      filteredFoods.clear();
    } finally {
      isLoading.value = false;
    }
  }
}
