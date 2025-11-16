import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon
    
  });

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff2f2f2),
        hint: Text(hint),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
          size: 22,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xf2f2f2f2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
