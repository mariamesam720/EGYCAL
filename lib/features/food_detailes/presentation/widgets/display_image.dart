import 'package:flutter/material.dart';

class FoodImageHeader extends StatelessWidget {
  final String imagePath;

  const FoodImageHeader({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath, width: double.infinity, height: 200, fit: BoxFit.cover),
        Positioned(
          top: 4,
          left: 4,
          child: IconButton(
            icon: Icon(Icons.close, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
