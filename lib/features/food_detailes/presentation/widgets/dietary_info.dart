import 'package:egycal/features/food_detailes/presentation/models/dietary_info_model.dart';
import 'package:flutter/material.dart';

class DietaryInfo extends StatelessWidget {
  final DietaryInfoModel info;

  const DietaryInfo({super.key, required this.info});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "This food is free from:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Column(
                  
                  children: [
                    buildBox('Milk', info.isMilkFree),
                    buildBox('Egg', info.isEggFree),
                    buildBox('Fish', info.isFishFree),
                    buildBox('Nuts', info.isNutsFree),
                    buildBox('Soy', info.isSoyFree),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Flexible(
                child: Column(
                  children: [
                    buildBox('Lactose', info.isLactoseFree),
                    buildBox('Gluten', info.isGlutenFree),
                    buildBox('Peanuts', info.isPeanutsFree),
                    buildBox('Shellfish', info.isShellfishFree),
                    buildBox('Sesame', info.isSesameFree),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "This food is suitable for:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          buildBox('Vegetarian', info.isVegetarian),
          buildBox('Vegan diets', info.isVegan),
        ],
      ),
    );
  }
  Widget buildBox(String label, bool isTrue) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          Icon(
            isTrue ? Icons.check_circle_outline : Icons.cancel_outlined,
            color: isTrue ? Colors.green : Colors.red,
            size: 23,
          ),
          const SizedBox(width: 12),
          Text(label,style: TextStyle(fontSize: 15),),
        ],
      ),
    );
  }
}
