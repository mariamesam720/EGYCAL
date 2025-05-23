import 'package:flutter/material.dart';

class GenderProvider extends ChangeNotifier {
  static const String femaleGender = 'Female';
  static const String maleGender = 'Male';
  String? _gender;
  String? get gender => _gender;
  void setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  bool isSelected(gender) {
    return _gender == gender;
  }
}
