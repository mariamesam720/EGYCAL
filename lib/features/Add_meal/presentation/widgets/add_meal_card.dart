import 'package:egycal/features/Add_meal/presentation/widgets/serving.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:flutter/material.dart';

class AddMealCard extends StatelessWidget {
  final FoodDetailsModel food;
  const AddMealCard({super.key, required this.food});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shadowColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF152D2F),
            borderRadius: BorderRadius.circular(17),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.engname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('${food.calories.toStringAsFixed(1)} cal',
                      style: const TextStyle(color: Colors.white70)),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.add_circle, color: Colors.white),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor:
                        Colors.black.withOpacity(0), // خلفية شفافة رمادية
                    barrierColor: Colors.black.withOpacity(0.5), // تغطية الشاشة
                    builder: (context) => Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: BottomGramsInput(food: food),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class FoodCard extends StatefulWidget {
//   final int caloriesPer100g;

//   const FoodCard({super.key, required this.caloriesPer100g});

//   @override
//   State<FoodCard> createState() => _FoodCardState();
// }

// class _FoodCardState extends State<FoodCard> {
//   bool showGramsInput = false;
//   final TextEditingController gramsController = TextEditingController();
//   double? calculatedCalories;

//   void calculateCalories() {
//     final grams = double.tryParse(gramsController.text);
//     if (grams != null) {
//       final calories = (widget.caloriesPer100g / 100) * grams;
//       setState(() {
//         calculatedCalories = calories;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xFF2C3E50),
//       margin: const EdgeInsets.all(10),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('${widget.caloriesPer100g} cal per 100g',
//                 style: const TextStyle(color: Colors.white70)),
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.add_circle, color: Colors.white),
//                   onPressed: () {
//                     showModalBottomSheet(
//                   context: context,
//                   isScrollControlled: true,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(16)),
//                   ),
//                   builder: (context) => AddMealBottomSheet(
//                     onMealAdded: (name,) {
//                       setState(() {
//                         meals.add(
//                             MealModel(name:name,calories: 0));
//                       });
//                     },
//                   ),
//                 );
//                   },
//                 ),
//               ],
//             ),
//             if (showGramsInput) ...[
//               TextField(
//                 controller: gramsController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: 'Enter grams',
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//                 onChanged: (_) => calculateCalories(),
//               ),
//               // const SizedBox(height: 6),
//               // if (calculatedCalories != null)
//               //   Text(
//               //     'Calories: ${calculatedCalories!.toStringAsFixed(2)} cal',
//               //     style: const TextStyle(color: Colors.white),
//               //   )
//             ]
//           ],
//         ),
//       ),
//     );
//   }
// }

