import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/src/models/story_view_audio_config.dart';

class StoryViewImageConfig {
  StoryViewImageConfig({
    this.fit,
    this.height,
    this.width,
    this.progressIndicatorBuilder,
    this.audioConfig,
    this.scale = 1.0,
    this.rotation = 0.0,
    this.offset = const Offset(0, 0),
  });

  /// Height for the ImageBuilder
  final double? height;

  /// Width for the ImageBuilder
  final double? width;

  /// BoxFit settings for the ImageBuilder
  final BoxFit? fit;

  final StoryViewAudioConfig? audioConfig;

  /// Progress Indicator for building image
  final Widget Function(BuildContext, String, DownloadProgress)? progressIndicatorBuilder;

  double scale;
  double rotation;
  Offset offset;
}
