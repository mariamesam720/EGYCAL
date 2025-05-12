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
      padding: const EdgeInsets.only(bottom: 20),
      child: PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        elevation: 4,
        shadowColor: Colors.grey,
        child: SizedBox(
          width: 200,
          height: 35,
          child: DropdownButtonFormField<String>(
            isDense: true,
            isExpanded: true,
            // itemHeight: 40,
            menuMaxHeight: 250,
            style: TextStyle(fontSize: 15, color: Colors.black),
            dropdownColor: Colors.white,
            value: value,
            decoration: InputDecoration(
              errorStyle: TextStyle(fontSize: 0),
              labelText: labelText,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
            validator: validator,
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// Widget CustomDropdown({
//   required String label,
//   required String? value,
//   required List<String> items,
//   required String hint,
//   required ValueChanged<String?> onChanged,
//   final String? Function(String?)? validator,
// }) {
//   return Padding(
//     padding: const EdgeInsets.only(bottom: 16.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
//         SizedBox(height: 4),
//         DropdownButtonFormField<String>(
//           value: value,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//             border: OutlineInputBorder(),
//             errorBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.red, width: 1.5),
//             ),
//           ),
//           items: items.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           onChanged: onChanged,
//           validator: validator,
//           isExpanded: true, // Important for full width
//           hint: Text(hint),
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     ),
//   );
// }
