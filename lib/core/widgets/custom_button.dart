import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/welcome/presentation/widgets/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextCustomButton extends StatelessWidget {
    final PageController pageController ;

  const NextCustomButton({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: SizeConfig.defaultSize! * 4,
        right: 32,
        child: ElevatedButton(
          onPressed: () {
               if (pageController.positions.isNotEmpty) {  
                double currentPage = pageController.page ?? 0;

                if (currentPage < 2) {
                  pageController.animateToPage(
                    (currentPage + 1).toInt(), 
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeOutCirc,
                  );
                } else {
                  Get.to(() => Welcome());
                }
              }
          },
            
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Color(0xFF102A43),
          ),
        ),
      ),
    ]);
  }
}
