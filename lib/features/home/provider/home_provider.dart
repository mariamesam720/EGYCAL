import 'package:flutter/material.dart';

class CaloriesProvider with ChangeNotifier {
  int goal = 2270;
  int food = 920; 
  int get remaining => goal - food;
  double get progressPercent => food / goal;
  void setGoal(int value) {
    goal = value;
    notifyListeners();
  }
  void setFood(int value) {
    food = value;
    notifyListeners();
  }
  void addFood(int calories) {
    food += calories;
    notifyListeners();
  }
}
