import 'package:egycal/features/Food/presentation/widgets/food.dart';
import 'package:egycal/features/Home/presentation/widgets/bottom_navbar';
import 'package:egycal/features/Home/presentation/widgets/calorie_intake.dart';
import 'package:egycal/features/Home/presentation/widgets/cards.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CalorieIntake(),
          GridviewCards(context)
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  Flexible GridviewCards(BuildContext context) {
    return Flexible(
          child: GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
            children: [
              Cards(
                icon: Icons.fastfood,
                label: 'food',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Food()));
                },
              ),
              Cards(
                icon: Icons.bar_chart,
                label: 'Reports',
                onTap: () {},
              ),
              Cards(
                icon: Icons.add_circle_outline,
                label: 'Add',
                onTap: () {},
              ),
              Cards(
                icon: Icons.pie_chart_outline,
                label: 'Diary',
                onTap: () {},
              ),
            ],
          ),
        );
  }
}

