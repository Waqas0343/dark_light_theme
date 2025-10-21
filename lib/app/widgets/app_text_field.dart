import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final bool obscureText;
  final VoidCallback? onSuffixTap;
  final bool showSuffix;

   const AppTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.onSuffixTap,
    this.showSuffix = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: isDark ? Colors.white : Colors.black),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: isDark ? Colors.white70 : Colors.black54,
        ),
        prefixIcon: Icon(icon, color: isDark ? Colors.white : Colors.black54),
        suffixIcon: showSuffix
            ? IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: isDark ? Colors.white : Colors.black54,
          ),
          onPressed: onSuffixTap,
        )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: isDark ? Colors.white38 : Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: isDark ? Colors.blueAccent :  Color(0xFF3876F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
