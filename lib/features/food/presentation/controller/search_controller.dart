import 'package:get/get.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';

class SearchControllerr extends GetxController {
  RxString searchText = ''.obs;
  RxList<FoodDetailsModel> allFoods = <FoodDetailsModel>[].obs;
  RxList<FoodDetailsModel> filteredFoods = <FoodDetailsModel>[].obs;

  void updateSearchText(String value) {
    searchText.value = value;
    filterFoods();
  }

  void setFoodList(List<FoodDetailsModel> foods) {
    allFoods.value = foods;
    filteredFoods.value = foods;
  }

  void filterFoods() {
    final query = searchText.value.toLowerCase();
    filteredFoods.value = allFoods.where((food) {
      return food.engname.toLowerCase().contains(query) ||
             food.arname.toLowerCase().contains(query);
    }).toList();
  }
}
