import 'package:egycal/features/food_detailes/presentation/models/food_details_mode.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BuildPieChart extends StatelessWidget {
  const BuildPieChart({super.key, required this.food});
  final FoodDetailsModel food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PieChart(
                  PieChartData(
                    sections: [
                      _buildPieSection(food.proteins, Colors.purple), 
                      _buildPieSection(food.fats, Colors.orange), 
                      _buildPieSection(food.carbs, Colors.cyan), 
                    ],
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 35,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${food.calories}",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text("Cal",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              _buildMacroRow("${food.proteins}%", " Proteins", Colors.purple),
              _buildMacroRow("${food.fats}%", " Fats", Colors.orange),
              _buildMacroRow("${food.carbs}%", " Carbs", Colors.cyan),
            ],
          )
        ],
      ),
    );
  }
  PieChartSectionData _buildPieSection(double value, Color color) {
    return PieChartSectionData(
      value: value,
      color: color,
      radius: 12,
      showTitle: false,
    );
  }

  Widget _buildMacroRow(String percentage, String label, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(percentage,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: color)),
          Text(label, style: TextStyle(fontSize: 18, color: Colors.black)),
        ],
      ),
    );
  }
}