import 'package:egycal/features/Home/presentation/widgets/homeView.dart';
import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String? image;
  final VoidCallback ontap;
  const AvatarImage({super.key, this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(image!),
      ),
    );
  }
}
