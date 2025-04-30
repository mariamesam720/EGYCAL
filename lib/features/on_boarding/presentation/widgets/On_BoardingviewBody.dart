import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_button.dart';
import 'package:egycal/features/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:egycal/features/on_boarding/presentation/widgets/custom_pageview.dart';
import 'package:egycal/features/welcome/presentation/widgets/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingviewbody extends StatelessWidget {
  OnBoardingviewbody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: CustomPageview(controller: _controller)),
        Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 25,
            child: Center(
                child: CustomIndicator(controller: _controller, count: 3))),
        Positioned(
          bottom: SizeConfig.defaultSize! * 5,
          left: 32,
          child: TextButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Welcome())),
              child: Text(
                'Skip',
                style: TextStyle(
                    fontFamily: 'lnter',
                    fontSize: 16,
                    color: Color(0xFF6E7179),
                    fontWeight: FontWeight.normal),
              )),
        ),
        NextCustomButton(
          pageController: _controller,
          onPressedfun: () {
            if (_controller.positions.isNotEmpty) {
              double currentPage = _controller.page ?? 0;

              if (currentPage < 2) {
                _controller.animateToPage(
                  (currentPage + 1).toInt(),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOutCirc,
                );
              } else {
                Get.to(() => Welcome());
              }
              ;
            }
          },
        ),
      ],
    );
  }
}
