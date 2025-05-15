import 'package:flutter/material.dart';
class AdditionalUserInformation{
  String? goal;
  String? activity;
  int? meter;
  int? cm;
  int? weight;
  String? avatar;

  void saveGoal(String? value) => goal = value;
  void saveActivity(String? value) => activity = value;
  void saveMeter(int? value) => meter = value;
  void saveCm(int? value) => cm = value;
  void saveWeight(int? value) => weight = value;
  void saveAvatar(String? value) => avatar = value;
}