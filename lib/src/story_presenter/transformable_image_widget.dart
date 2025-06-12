import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TransformableImageWidget extends StatelessWidget {
  const TransformableImageWidget(
      {super.key, required this.aspectRatio, this.image, this.backgroundColor, this.imageUrl});

  final double aspectRatio;
  final ImageProvider<Object>? image;
  final Color? backgroundColor;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        // width: image.width.toDouble(),
        // height: image.height.toDouble(),
        decoration: BoxDecoration(
          color: backgroundColor,
          image: image != null
              ? DecorationImage(
                  fit: BoxFit.contain,
                  image: image!,
                )
              : null,
        ),
        child: image == null && imageUrl != null
            ? CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 0),
                placeholderFadeInDuration: const Duration(milliseconds: 0),
                imageUrl: imageUrl!,
                fit: BoxFit.contain,
                placeholder: (context, str) {
                  return const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                  );
                },
              )
            : null,
      ),
    );
  }
}
