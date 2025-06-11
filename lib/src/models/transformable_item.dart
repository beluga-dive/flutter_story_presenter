import 'package:flutter/material.dart';

class TransformableItem {
  final String id;
  final Widget child;
  double scale;
  double rotation;

  // Changed from offset to relativeOffset (0.0-1.0 range). Center is middle of the container.
  Offset relativeOffset;

  final GlobalKey key; // Add GlobalKey

  TransformableItem({
    required this.id,
    required this.child,
    this.scale = 1.0,
    this.rotation = 0.0,
    this.relativeOffset = Offset.zero, // Position as percentage of container
    GlobalKey? key,
  }) : key = key ?? GlobalKey();
}
