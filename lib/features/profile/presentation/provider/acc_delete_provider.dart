import 'package:flutter/material.dart';

class AccDeleteProvider extends ChangeNotifier {
  static const String yesChoice = 'Yes';
  static const String noChoice = 'No';
  String? _choice;
  String? get choice => _choice;
  void setChoice(String choice) {
    _choice = choice;
    notifyListeners();
  }

  bool isSelected(choice) {
    return _choice == choice;
  }
}
