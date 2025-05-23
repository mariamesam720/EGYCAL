import 'package:flutter/material.dart';

class FoodImageHeader extends StatelessWidget {
  final String? imagePath;

  const FoodImageHeader({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        imagePath != null && imagePath!.isNotEmpty
            ? Image.asset(imagePath!, width: double.infinity, height: 200, fit: BoxFit.cover)
            : Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: Icon(
                  Icons.image_not_supported,
                  color: Colors.grey[600],
                  size: 80,
                ),
              ),
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
