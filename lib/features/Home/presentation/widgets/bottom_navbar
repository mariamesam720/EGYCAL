import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: GNav(
          padding: EdgeInsets.all(16),
          backgroundColor: Color(0xFF152D2F),
          color: Colors.white,
          activeColor: Colors.white,
          textStyle: TextStyle(color: Colors.white),
          tabs: [
            GButton(
              gap: 8,
              icon: Icons.home_outlined,
              text: 'Home',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.favorite_outline_outlined,
              text: 'Favoruites',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
              onPressed: () {},
            ),
          ]),
    );
  }
}
