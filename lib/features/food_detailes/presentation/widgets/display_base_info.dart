// import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
// import 'package:egycal/features/food_detailes/presentation/widgets/nutrition_box.dart';
// import 'package:flutter/material.dart';

// class FoodImageHeader extends StatelessWidget {
// final FoodDetailsModel selectedFood;
//   const FoodImageHeader({super.key, required this.selectedFood});

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//       child: Card(
//         color: Color(0xff438F95),

//         child:
//           // Image.asset(imagePath, width: double.infinity, height: 200, fit: BoxFit.cover),
//           Column(
//             children: [
//               Positioned(
//                 top: 4,
//                 left: 4,
//                 child: IconButton(
//                   icon: Icon(Icons.close, color: Colors.black),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ),
//               Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 NutrientBox(foodDetailsModel: selectedFood),
//               ],
//             ),
//             ],
//           ),
//       ),
//     );
//   }
// }
import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:egycal/features/food_detailes/presentation/widgets/nutrition_box.dart';
import 'package:flutter/material.dart';

class FoodImageHeader extends StatelessWidget {
  final FoodDetailsModel selectedFood;
  const FoodImageHeader({super.key, required this.selectedFood});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF438F95), Color(0xFF152D2F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedFood.engname.toLowerCase(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '${selectedFood.calories.toStringAsFixed(1)} cal',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.favorite_border,
                    size: 32,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              NutrientBox(foodDetailsModel: selectedFood),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
