import 'package:egycal/features/reports/presentation/widgets/bottom_navbar.dart';
import 'package:egycal/features/reports/presentation/widgets/weight_report_body.dart';
import 'package:flutter/material.dart';

class WeightReport extends StatelessWidget{
  const WeightReport({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WeightReportBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}