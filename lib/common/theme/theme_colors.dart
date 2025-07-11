import 'package:client/common/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color filterButtonFillColor;
  const ThemeColors({required this.filterButtonFillColor});

  @override
  ThemeExtension<ThemeColors> copyWith({Color? filterButtonFillColor}) {
    return ThemeColors(
      filterButtonFillColor:
          filterButtonFillColor ?? this.filterButtonFillColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) return this;

    return ThemeColors(
      filterButtonFillColor: Color.lerp(
        filterButtonFillColor,
        other.filterButtonFillColor,
        t,
      )!,
    );
  }

  static get light => ThemeColors(filterButtonFillColor: AppColors.black);

  static get dark => ThemeColors(filterButtonFillColor: AppColors.white);
}
