import 'package:egycal/features/Home/presentation/widgets/calorie_intake.dart';
import 'package:egycal/features/Home/presentation/widgets/cards.dart';
import 'package:egycal/features/Home/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileSection(),
          SizedBox(height: 5,),
          CalorieIntake(),
        
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 8,
            childAspectRatio: 1.3,
            children: [
              Cards(icon: Icons.fastfood, label: 'food',onTap: (){},),
              Cards(icon: Icons.bar_chart, label: 'Reports',),
              Cards(icon: Icons.add_circle_outline, label: 'Add',),
              Cards(icon: Icons.pie_chart_outline, label: 'Diary',),
            ],
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: GNav(
          padding: EdgeInsets.all(16),
          backgroundColor: Color(0xFF337277),
          
          color: Colors.white,
          activeColor: Colors.white,
          textStyle: TextStyle(
            color: Colors.white
          ),
          tabs: [
          GButton(
          gap: 8,
          icon: Icons.home_outlined,
          text: 'Home',
          onPressed: (){},
          ),
          GButton(icon: Icons.favorite_outline_outlined,
          text: 'Favoruites',
          ),
          GButton(icon: Icons.search,
          text: 'Search',
          onPressed: (){},
          ),
          GButton(icon: Icons.person_2_outlined,
          text: 'Profile',
          onPressed: (){},
          ),
        ]),
      ),
    );
  }
}