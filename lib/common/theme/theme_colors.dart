import 'package:client/common/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color borderInputTextColor;
  const ThemeColors({required this.borderInputTextColor});

  @override
  ThemeExtension<ThemeColors> copyWith({Color? borderInputTextColor}) {
    return ThemeColors(
      borderInputTextColor: borderInputTextColor ?? this.borderInputTextColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) return this;

    return ThemeColors(
      borderInputTextColor: Color.lerp(
        borderInputTextColor,
        other.borderInputTextColor,
        t,
      )!,
    );
  }

  static get light => ThemeColors(borderInputTextColor: AppColors.transparent);

  static get dark => ThemeColors(borderInputTextColor: AppColors.transparent);
}
