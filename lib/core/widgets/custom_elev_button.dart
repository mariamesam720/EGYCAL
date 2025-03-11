import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.buttonName, required this.onPressedfn});
  final String buttonName;
  final VoidCallback onPressedfn;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressedfn(),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2F6F72), // Button color
        minimumSize: const Size(double.infinity, 50), // Full width
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
