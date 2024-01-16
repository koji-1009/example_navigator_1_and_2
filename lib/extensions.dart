import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get maxContentWidth => switch (screenWidth) {
        < 600 => screenWidth,
        _ => 600,
      };

  double get contentSpacing => switch (screenWidth) {
        < 600 => 16,
        _ => (screenWidth - 568) / 2,
      };
}
