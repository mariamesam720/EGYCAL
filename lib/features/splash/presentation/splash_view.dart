import 'package:egycal/features/splash/presentation/widgets/splashview_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF152D2F),
      body: SplashViewBody(),
    );
  }
}