import 'package:flutter/material.dart';

class CustomTextfieldTeks extends StatelessWidget {
  // kita list variabel2 yang diperlukan
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const CustomTextfieldTeks({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}