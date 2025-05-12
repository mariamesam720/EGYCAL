import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeightLineChart extends StatelessWidget{
  final Map<double, double> data;
  final Map<int,String> months = {1:"Jan", 2:"Feb", 3:"Mar", 4:"Apr", 5:"May", 6:"Jun", 7:"Jul", 8:"Aug", 9:"Sep", 10:"Oct", 11:"Nov", 12:"Dec"};
  WeightLineChart({super.key, required this.data});
  double get minimumWeight => data.values.reduce((a, b) => a < b ? a : b);
  List<FlSpot> dots() {
    return data.entries.map((e) => FlSpot(e.key, e.value)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 207,
      decoration: BoxDecoration(
        color: Color(0xfff7f7f7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:15,right:25,left:10,bottom: 15),
        child: LineChart(
          LineChartData(
            minY: 73,
            maxY: 100,
            minX: 1,
            maxX: 3,
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    return Text(months[value.toDouble()] ?? '');
                  },
                  reservedSize: 32,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 5,
                  getTitlesWidget: (value, meta) {
                    if (value == minimumWeight-2) return SizedBox.shrink();
                    return Text(value.toInt().toString());
                  },
                  reservedSize: 40,
                ),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                color: Color(0xff35cc8d),
                barWidth: 3,
                spots: dots(),
                dotData: FlDotData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

