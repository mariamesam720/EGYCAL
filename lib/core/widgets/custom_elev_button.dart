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
              backgroundColor: Color(0xFF152D2F),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            fixedSize: Size(312, 52),
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      ),
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
