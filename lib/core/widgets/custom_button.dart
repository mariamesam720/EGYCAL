import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/welcome/presentation/widgets/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextCustomButton extends StatelessWidget {
    final PageController pageController ;
    final VoidCallback onPressedfun;

  const NextCustomButton({super.key, required this.pageController,required this.onPressedfun});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: SizeConfig.defaultSize! * 4,
        right: 32,
        child: ElevatedButton(
          onPressed: ()=>onPressedfun(),
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
