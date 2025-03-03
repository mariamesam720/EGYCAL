import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/on_boarding/presentation/On_BoardingView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'images/WhatsApp Image 2025-02-10 at 08.31.36_853fae92 1.png',
      ),
    ]));
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingview(), transition: Transition.fade);
    });
  }
}
