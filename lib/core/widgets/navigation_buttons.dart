import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onBack;
  const NavigationButtons({super.key, required this.onBack,required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: TextButton(onPressed: onBack, child: Text('Back', style: TextStyle(
              fontFamily: 'lnter',
              fontSize: 16,
              color: Color(0xFF6E7179),
              fontWeight: FontWeight.normal),)),
        ),
            Padding(
              padding: const EdgeInsets.only(top: 25,right: 10),
              child: FloatingActionButton(onPressed: onNext,backgroundColor: Color(0xFF152D2F),
              shape: CircleBorder(),
              child: Icon(Icons.navigate_next, color: Colors.white,size: 28),),
            )
      ],
    );
  }
}
