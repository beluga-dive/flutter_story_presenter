import 'package:flutter/material.dart';

class TransformableTextWidget extends StatelessWidget {
  const TransformableTextWidget({
    super.key,
    required this.text,
    this.foregroundColor,
    this.backgroundColor,
    this.fontWeight,
  });

  final String text;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: TextScaler.noScaling,
      style: TextStyle(
        color: foregroundColor,
        backgroundColor: backgroundColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
