import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

   AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize:  Size(double.infinity, 50),
        backgroundColor:
        isDark ? Colors.blueAccent :  Color(0xFF3876F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ?  CircularProgressIndicator(color: Colors.white)
          : Text(
        label,
        style:  TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
