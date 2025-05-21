import 'package:flutter/material.dart';

class TransformableTextWidget extends StatelessWidget {
  const TransformableTextWidget({
    super.key,
    required this.text,
    this.foregroundColor,
    this.backgroundColor,
  });

  final String text;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: TextScaler.noScaling,
      style: TextStyle(
        color: foregroundColor,
        backgroundColor: backgroundColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
