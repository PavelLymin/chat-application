part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  @override
  final Brightness brightness;
  ThemeState({required this.brightness});

  bool get isDarkMode => brightness == Brightness.dark;
}
