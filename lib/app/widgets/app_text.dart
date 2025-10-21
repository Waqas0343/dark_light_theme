import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign textAlign;

  const AppText(
      this.text, {
        super.key,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.color,
        this.textAlign = TextAlign.start,
      });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color ??
            (isDark ? Colors.white : Colors.black87),
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
