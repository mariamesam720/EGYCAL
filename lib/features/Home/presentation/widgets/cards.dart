import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cards extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback ?onTap;
  const Cards({super.key, required this.icon , required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 2, color: Color(0xFF337277))),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Color(0xFF337277),),
              SizedBox(height: 8,),
              Text(label, style: TextStyle(fontFamily: 'Inter',color: Color(0xFF337277)),)
              ],
          ),
        ),
      ),
    );
  }
}
