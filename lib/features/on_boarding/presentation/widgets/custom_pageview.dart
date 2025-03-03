import 'package:egycal/features/on_boarding/presentation/widgets/page_viewitem.dart';
import 'package:flutter/material.dart';

class CustomPageview extends StatelessWidget {
  final PageController controller;
  CustomPageview({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            children: [
              PageViewitem(
                image: 'images/Onboarding Illustrations (1).png',
                tittle: 'Welcome!',
                subtittle:
                    '  Congratulations on taking the \nfirst step toward a healthier you!',
              ),
              PageViewitem(
                image: 'images/Onboarding Illustrations (2).png',
                tittle: 'Effortless Tracking',
                subtittle:
                    ' Easily log your meals, snacks \n         and water intake',
              ),
              PageViewitem(
                image: 'images/Onboarding Illustrations (3).png',
                tittle: 'Goal Setting',
                subtittle:
                    'Set realistic goals and watch \n        your progress unfold',
              )
            ],
          ),
          
        
        ),
        
      ],
    );
  }
}
