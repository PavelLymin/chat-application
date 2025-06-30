part of 'theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    hintColor: AppColors.white,
    textTheme: createTextTheme(),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.grey),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(AppColors.black),
      trackColor: WidgetStateProperty.all(AppColors.white),
      trackOutlineColor: WidgetStateProperty.all(AppColors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
        foregroundColor: WidgetStateProperty.all(AppColors.black),
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
