import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final String labelText;
  final List<String> items;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.labelText,
    required this.items,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 60,
        width: 200,
        child: DropdownButtonFormField<String>(
          style: TextStyle(fontSize: 15, color: Colors.black),
          dropdownColor: Colors.white,
          menuMaxHeight: 250,
          value: value,
          decoration: InputDecoration(
            labelText: labelText,
            
            errorBorder: OutlineInputBorder(
              // Error border
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Color(0xFFDEDDDD)),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          items:
              items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          onChanged: onChanged,
          validator: validator,
        ),
      ),
    );
  }
}