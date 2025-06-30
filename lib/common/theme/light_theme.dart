part of 'theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    hintColor: AppColors.white,
    textTheme: createTextTheme(),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.grey),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(AppColors.white),
      trackColor: WidgetStateProperty.all(AppColors.black),
      trackOutlineColor: WidgetStateProperty.all(AppColors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.black),
        foregroundColor: WidgetStateProperty.all(AppColors.white),
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
    extensions: [ThemeColors.dark],
  );
}
