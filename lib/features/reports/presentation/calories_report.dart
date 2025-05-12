import 'package:egycal/features/reports/presentation/widgets/bottom_navbar.dart';
import 'package:egycal/features/reports/presentation/widgets/calories_report_body.dart';
import 'package:flutter/material.dart';

class CaloriesReport extends StatelessWidget{
  const CaloriesReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CaloriesReportBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}