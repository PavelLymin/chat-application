import 'package:client/common/theme/theme_colors.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
