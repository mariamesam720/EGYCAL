import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String? hintText;
  final IconData? icon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final TextEditingController? textEditingController;
  const TextFieldWidget({
    required this.obscureText,
    this.icon,
    this.validator,
    this.onSaved,
    super.key, this.textEditingController, this.onChanged, this.hintText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      elevation:3,
      shadowColor: Colors.grey,
      child: TextFormField(
        controller: TextEditingController(),
        obscureText: _isObscured,
        decoration: InputDecoration(
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
              : null,
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.hintText,
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        validator: widget.validator,
        onChanged: widget.onSaved,
        onSaved: widget.onSaved,
      ),
    );
  }
}
