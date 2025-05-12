import 'package:egycal/features/Gender/provider/gender_provider.dart';
import 'package:egycal/features/add_food_user/provider/food_provider.dart';
import 'package:egycal/features/goal/provider/goal_provider.dart';
import 'package:egycal/features/profile/presentation/provider/acc_delete_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'features/splash/presentation/splashview.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => GoalProvider()),
        ChangeNotifierProvider(create: (_)=>GenderProvider()),
        ChangeNotifierProvider(create: (_)=>AccDeleteProvider()),
        ChangeNotifierProvider(create: (_)=>FoodProvider()),
        ],
        child: EgyCal()),
  );
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
