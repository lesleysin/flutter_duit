import 'package:flutter_duit/src/utils/index.dart';

import 'index.dart';

final class PositionedAttributes
    implements DUITAttributes<PositionedAttributes> {
  double? left;
  double? top;
  double? right;
  double? bottom;

  PositionedAttributes({
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  PositionedAttributes copyWith(other) {
    return PositionedAttributes(
      left: other.left ?? left,
      top: other.top ?? top,
      right: other.right ?? right,
      bottom: other.bottom ?? bottom,
    );
  }

  factory PositionedAttributes.fromJson(JSONObject json) {
    return PositionedAttributes(
      left: NumUtils.toDouble(json['left']),
      top: NumUtils.toDouble(json['top']),
      right: NumUtils.toDouble(json['right']),
      bottom: NumUtils.toDouble(json['bottom']),
    );
  }
}