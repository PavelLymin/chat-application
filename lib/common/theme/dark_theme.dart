part of 'theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    hintColor: AppColors.white,
    textTheme: createTextTheme(),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.grey),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.black),
      trackColor: WidgetStatePropertyAll(AppColors.white),
      trackOutlineColor: WidgetStatePropertyAll(AppColors.white),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStatePropertyAll(AppColors.black),
      checkColor: WidgetStatePropertyAll(AppColors.white),
      side: WidgetStateBorderSide.resolveWith(
        (states) => BorderSide(width: 1, color: AppColors.white),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
        foregroundColor: WidgetStatePropertyAll(AppColors.black),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white),
        borderRadius: BorderRadius.circular(25),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.white),
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
    extensions: [ThemeColors.dark],
  );
}
