import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class GoalProvider extends ChangeNotifier {
  String? _selectedGoal;
  String? get selectedGoal => _selectedGoal;

  void setGoal(String goal) {
    _selectedGoal = goal;
    notifyListeners();
  }
  bool  isSelected(String goal){
    return _selectedGoal==goal;
  }
}
