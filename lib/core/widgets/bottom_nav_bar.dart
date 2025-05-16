import 'package:egycal/features/Home/presentation/widgets/homeView.dart';
import 'package:egycal/features/favorites/favorites_page.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:egycal/features/profile/presentation/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<FoodDetailsModel> allFoods =[];
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
              onPressed: () {
                Get.to(() => Home());
              },
            ),
            GButton(
              icon: Icons.favorite_outline_outlined,
              text: 'Favoruites',
              onPressed: () {
                Get.to(FavoritesPage());
              },
            ),
            // GButton(
            //   icon: Icons.search,
            //   text: 'Search',
            //   onPressed: () {
            //     Get.to(() => SearchPage(allFoods: allFoods));
            //   },
            // ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
              onPressed: () {
                Get.to(Profile());
              },
            ),
          ]),
    );
  }
}
