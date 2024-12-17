import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.obscureText, required this.labelText, required this.icon,
  });
  final bool obscureText ;
  final String labelText ;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          labelText: labelText,
          border:const OutlineInputBorder(),
        ),
      ),
    );
  }
}
