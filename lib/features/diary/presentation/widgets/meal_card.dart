import 'package:egycal/features/diary/presentation/models/meal_model.dart';
import 'package:egycal/features/diary/presentation/widgets/add_meal.dart';
import 'package:egycal/features/Add_meal/presentation/add_meal_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MealCard extends StatefulWidget {
  const MealCard({super.key});

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  final List<MealModel> meals = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Meals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  builder: (context) => AddMealBottomSheet(
                    onMealAdded: (name,) {
                      setState(() {
                        meals.add(
                            MealModel(name:name,calories: 0));
                      });
                    },
                  ),
                );
              },
            )
          ],
        ),
      if (meals.isEmpty) const Text('No meals added yet.'),
        ...meals.map((meal) {
          return GestureDetector(
            child: Card(
              color: Colors.grey[50],
              margin: const EdgeInsets.only(bottom: 10,),
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(right: 16,left: 16),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        meal.name,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    trailing: Text(
                      '${meal.calories} Cal',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
            
              ),
            
            ),
            onTap: () => Get.to(AddMealPage()),
          );
        }),
      ],
    );
  }
}

// import 'package:egycal/features/diary/presentation/models/meal_model.dart';
// import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   MyWidget({super.key, required this.meals});
//   final MealModel meals;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey[50],
//       margin: const EdgeInsets.only(
//         bottom: 10,
//       ),
//       child: SizedBox(
//         height: 100,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 8),
//           child: ListTile(
//             contentPadding: EdgeInsets.only(right: 16, left: 16),
//             title: Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Text(
//                 meals.name,
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             subtitle: Row(
//               children: [
//                 Icon(
//                   Icons.watch_later_outlined,
//                   size: 17,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text('${meals.formattedTime}'),
//               ],
//             ),
//             trailing: Text(
//               '${meals.calories} Cal',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
