import 'package:flutter/material.dart';
import 'custom_textfield_teks.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: CustomTextfieldTeks(
        text: text,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}