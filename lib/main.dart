import 'package:egycal/features/add_food_user/provider/food_contain_provider.dart';
import 'package:egycal/features/add_food_user/provider/food_provider.dart';
import 'package:egycal/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:egycal/features/gender/provider/gender_provider.dart';
import 'package:egycal/features/goal/provider/goal_provider.dart';
import 'package:egycal/features/profile/presentation/provider/acc_delete_provider.dart';
import 'package:egycal/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'features/splash/presentation/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(FavoritesController());

  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => GoalProvider()),
        ChangeNotifierProvider(create: (_)=>GenderProvider()),
        ChangeNotifierProvider(create: (_)=>AccDeleteProvider()),
        ChangeNotifierProvider(create: (_)=>FoodProvider()),
        ChangeNotifierProvider(create: (_)=>FoodContainProvider()),
        ],
        child: const EgyCal()),
  );
}

class EgyCal extends StatelessWidget {
  const EgyCal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
