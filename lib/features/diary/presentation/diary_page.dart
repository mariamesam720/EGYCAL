import 'package:egycal/features/diary/presentation/models/meal_model.dart';
import 'package:egycal/features/diary/presentation/widgets/avatar.dart';
import 'package:egycal/features/diary/presentation/widgets/meal_card.dart';
import 'package:egycal/features/diary/presentation/widgets/nav_bar.dart';
import 'package:egycal/features/diary/presentation/widgets/nutrients_indicator.dart';
import 'package:egycal/features/diary/presentation/widgets/water_intake_card.dart';
import 'package:flutter/material.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});
  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            avatarimg(
              image: 'images/Ellipse 11.png',
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Ahmed',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            style: ButtonStyle(iconSize: WidgetStatePropertyAll(18)),
            onPressed: () async {
              await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: Color(0xFF152D2F),
                        onPrimary: Colors.white,
                        onSurface: Colors.black,
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 130, 189, 194)),
                          foregroundColor: Color(0xFF152D2F),
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
              );
            },
            label: const Text('Today', style: TextStyle(color: Colors.black)),
            icon: const Icon(
              size: 22,
              Icons.calendar_month_outlined,
              color: Color(0xff669599),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nutrients Indicator',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const NutrientsIndicator(),
            const SizedBox(height: 20),
            const Text('Water Intake',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            WaterCard(),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Meals',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
                MyWidget(meals: MealModel(name: 'Breakfast', calories: 44)),
                MyWidget(meals: MealModel(name: 'Lunch', calories: 444)),
              ],
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
