import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/search/presentation/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/splashview.dart';

void main() {
  Get.put(FavoritesController());
  Get.put(SearchControllerr());
  runApp(EgyCal());
}

class EgyCal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        home: SplashView(),
      ),
    );
  }
}