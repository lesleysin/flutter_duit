import 'dart:typed_data';

import 'package:duit_kernel/duit_kernel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_duit/src/utils/index.dart';

/// Represents the attributes for a Image widget.
///
/// This class implements the [DuitAttributes] interface, allowing it to be used with DUIT widgets.
final class ImageAttributes implements DuitAttributes<ImageAttributes> {
  final ImageType type;
  final String src;
  final Uint8List byteData;
  final double? scale, width, height;
  final int? cacheWidth, cacheHeight;
  final bool? isAntiAlias,
      matchTextDirection,
      gaplessPlayback,
      excludeFromSemantics;
  final FilterQuality? filterQuality;
  final AlignmentGeometry? alignment;
  final ImageRepeat? repeat;
  final Color? color;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;

  ImageAttributes({
    required this.type,
    required this.src,
    required this.byteData,
    this.scale,
    this.width,
    this.height,
    this.cacheWidth,
    this.cacheHeight,
    this.isAntiAlias,
    this.matchTextDirection,
    this.gaplessPlayback,
    this.filterQuality,
    this.alignment,
    this.repeat,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.excludeFromSemantics,
  });

  @override
  ImageAttributes copyWith(other) {
    return ImageAttributes(
      type: other.type,
      src: other.src,
      byteData: other.byteData,
      scale: other.scale ?? scale,
      width: other.width ?? width,
      height: other.height ?? height,
      cacheWidth: other.cacheWidth ?? cacheWidth,
      cacheHeight: other.cacheHeight ?? cacheHeight,
      isAntiAlias: other.isAntiAlias ?? isAntiAlias,
      matchTextDirection: other.matchTextDirection ?? matchTextDirection,
      gaplessPlayback: other.gaplessPlayback ?? gaplessPlayback,
      filterQuality: other.filterQuality ?? filterQuality,
      alignment: other.alignment ?? alignment,
      repeat: other.repeat ?? repeat,
      color: other.color ?? color,
      colorBlendMode: other.colorBlendMode ?? colorBlendMode,
      fit: other.fit ?? fit,
      excludeFromSemantics: other.excludeFromSemantics ?? excludeFromSemantics,
    );
  }

  factory ImageAttributes.fromJson(JSONObject json) {
    return ImageAttributes(
      type: ParamsMapper.convertToImageType(json['type']),
      src: json['src'],
      byteData: ParamsMapper.convertToUint8List(json['byteData']),
      scale: NumUtils.toDouble(json['scale']),
      width: NumUtils.toDouble(json['width']),
      height: NumUtils.toDouble(json['height']),
      cacheWidth: NumUtils.toInt(json['cacheWidth']),
      cacheHeight: NumUtils.toInt(json['cacheHeight']),
      isAntiAlias: json['isAntiAlias'],
      matchTextDirection: json['matchTextDirection'],
      gaplessPlayback: json['gaplessPlayback'],
      filterQuality: ParamsMapper.convertToFilterQuality(json['filterQuality']),
      alignment: ParamsMapper.convertToAlignment(json['alignment']),
      repeat: ParamsMapper.convertToImageRepeat(json['repeat']),
      color: json['color'] != null
          ? ColorUtils.tryParseColor(json['color'])
          : null,
      colorBlendMode: ParamsMapper.convertToBlendMode(json['colorBlendMode']),
      fit: ParamsMapper.convertToBoxFit(json['fit']),
      excludeFromSemantics: json['excludeFromSemantics'],
    );
  }
}
