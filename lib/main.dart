import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/splashview.dart';

void main() {
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