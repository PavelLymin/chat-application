import 'package:client/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicSwitchTheme extends StatelessWidget {
  const BasicSwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<ThemeCubit>().state.isDarkMode;
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Switch(
          value: brightness,
          onChanged: (_) {
            context.read<ThemeCubit>().setTheme(
              brightness: brightness ? Brightness.light : Brightness.dark,
            );
          },
        );
      },
    );
  }
}
