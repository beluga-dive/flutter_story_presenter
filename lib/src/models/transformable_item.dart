import 'package:flutter/material.dart';

class TransformableItem {
  final Widget child;
  double scale;
  double rotation;
  Offset offset;
  final String id;

  TransformableItem({
    required this.child,
    required this.id,
    this.scale = 1.0,
    this.rotation = 0.0,
    this.offset = Offset.zero,
  });
}
