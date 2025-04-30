import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final IconData icon;
  final VoidCallback onIconpress;

  const CustomAppbar({super.key, required this.text, required this.onIconpress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFF0D1220),
        ),
      ),
      centerTitle: true,
      
        leading :IconButton(
          onPressed: onIconpress,
          icon:Icon(icon),
        ),
      
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
