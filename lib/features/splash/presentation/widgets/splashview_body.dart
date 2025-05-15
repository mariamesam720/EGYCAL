import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:egycal/features/login/presentation/login_page.dart';
import 'package:egycal/features/Home/presentation/widgets/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Get.offAll(() => const Home(), transition: Transition.fade);
    } else {
      // User is not logged in, check if onboarding was completed
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool onboardingComplete = prefs.getBool('onboardingComplete') ?? false;

      if (onboardingComplete) {
        // Onboarding was completed, user is just logged out
        Get.offAll(() => const LoginPage(), transition: Transition.fade);
      } else {
        // First time user or onboarding not completed
        Get.offAll(() => const OnBoardingview(), transition: Transition.fade);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'images/WhatsApp Image 2025-02-10 at 08.31.36_853fae92 1.png',
      ),
    ]);
  }
}
