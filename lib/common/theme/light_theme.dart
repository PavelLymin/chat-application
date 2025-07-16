part of 'theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    hintColor: AppColors.white,
    textTheme: createTextTheme(),
    appBarTheme: AppBarTheme(backgroundColor: AppColors.white),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.grey),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.white),
      trackColor: WidgetStatePropertyAll(AppColors.black),
      trackOutlineColor: WidgetStatePropertyAll(AppColors.black),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStatePropertyAll(AppColors.white),
      checkColor: WidgetStatePropertyAll(AppColors.black),
      side: WidgetStateBorderSide.resolveWith(
        (states) => BorderSide(width: 1, color: AppColors.black),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.black),
        foregroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
        borderRadius: BorderRadius.circular(25),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
        borderRadius: BorderRadius.circular(25),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red),
        borderRadius: BorderRadius.circular(25),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red),
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    extensions: [ThemeColors.light],
  );
}
