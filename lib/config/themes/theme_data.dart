import '../../shared/packages.dart';
import 'theme.dart';

class Themes {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.bgDarkMode,
    disabledColor: MyColors.textColorDisable,
    primaryColor: MyColors.primaryColor,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    canvasColor: MyColors.bgSecondDarkMode,
    cardColor: MyColors.bgThirdDarkMode,
    colorScheme: const ColorScheme(
      primary: MyColors.primaryColor,
      secondary: MyColors.secondaryColor,
      surface: MyColors.textColorWhite,
      background: MyColors.bgDarkMode,
      shadow: MyColors.shadowDark,
      error: MyColors.primaryColor,
      onPrimary: MyColors.primaryColor,
      onSecondary: MyColors.secondaryColor,
      onSurface: MyColors.textColorWhite,
      onBackground: MyColors.bgDarkMode,
      onError: MyColors.primaryColor,
      brightness: Brightness.dark,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorWhite,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorWhite,
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorWhite,
      ),
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorWhite,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorWhite,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorWhite,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorWhite,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorWhite,
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorWhite,
      ),
      titleLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
      titleMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
      titleSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
      labelLarge: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
      labelMedium: TextStyle(
        fontSize: 6,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
      labelSmall: TextStyle(
        fontSize: 4,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorWhite,
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.bgLightMode,
    disabledColor: MyColors.textColorDisable,
    primaryColor: MyColors.primaryColor,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    canvasColor: MyColors.bgSecondLightMode,
    cardColor: MyColors.bgThirdLightMode,
    colorScheme: const ColorScheme(
      primary: MyColors.primaryColor,
      secondary: MyColors.secondaryColor,
      surface: MyColors.textColorBlack,
      background: MyColors.bgLightMode,
      shadow: MyColors.shadowLight,
      error: MyColors.primaryColor,
      onPrimary: MyColors.primaryColor,
      onSecondary: MyColors.secondaryColor,
      onSurface: MyColors.textColorBlack,
      onBackground: MyColors.bgLightMode,
      onError: MyColors.primaryColor,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorBlack,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorBlack,
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: MyColors.textColorBlack,
      ),
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorBlack,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorBlack,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: MyColors.textColorBlack,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorBlack,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorBlack,
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: MyColors.textColorBlack,
      ),
      titleLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
      titleMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
      titleSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
      labelLarge: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
      labelMedium: TextStyle(
        fontSize: 6,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
      labelSmall: TextStyle(
        fontSize: 4,
        fontWeight: FontWeight.w400,
        color: MyColors.textColorBlack,
      ),
    ),
  );
}
