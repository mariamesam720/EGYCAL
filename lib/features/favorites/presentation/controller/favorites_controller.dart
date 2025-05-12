import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:get/get.dart';

class FavoritesController extends GetxController {
  var favorites = <FoodDetailsModel>[].obs;

  void toggleFavorite(FoodDetailsModel food) {
    if (favorites.contains(food)) {
      favorites.remove(food);
    } else {
      favorites.add(food);
    }
  }

  bool isFavorite(FoodDetailsModel food) {
    return favorites.contains(food);
  }
}
