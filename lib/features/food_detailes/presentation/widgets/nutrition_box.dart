import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/features/food_detailes/presentation/models/food_details_model.dart';
import 'package:flutter/material.dart';

class NutrientBox extends StatelessWidget {
  const NutrientBox({super.key, required this.foodDetailsModel});
  final FoodDetailsModel foodDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            rowbuild('${foodDetailsModel.calories}', 'Calories'),
            SizedBox(
              width: SizeConfig.defaultSize! * 1.5,
            ),
            rowbuild('${foodDetailsModel.proteins}%', 'Proteins'),
            SizedBox(
              width: SizeConfig.defaultSize! * 1.5,
            ),
            rowbuild('${foodDetailsModel.fats}%', 'Fats'),
            SizedBox(
              width: SizeConfig.defaultSize! * 1.5,
            ),
            rowbuild('${foodDetailsModel.carbs}%', 'Carbs'),
          ],
        ),
      ),
    );
  }
}

Widget rowbuild(String value,String label) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 75,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37),
          color: Color(0xFF152D2F),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                // color: Colors.white,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}