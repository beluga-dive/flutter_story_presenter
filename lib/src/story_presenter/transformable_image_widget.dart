import 'package:flutter/material.dart';

class TransformableImageWidget extends StatelessWidget {
  const TransformableImageWidget({
    super.key,
    required this.aspectRatio,
    required this.image,
    this.backgroundColor,
  });

  final double aspectRatio;
  final ImageProvider<Object> image;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        // width: image.width.toDouble(),
        // height: image.height.toDouble(),
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: image,
          ),
        ),
      ),
    );
  }
}
