import 'package:egycal/features/Home/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileSection()
        ],
      ),
    );
  }
}