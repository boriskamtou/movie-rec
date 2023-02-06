import 'package:flutter/material.dart';
import 'package:movie_recommandation/themes/colors.dart';

class AppThemes {
  static ThemeData darkTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(
          AppColors.red500.value,
          const {
            100: AppColors.red100,
            200: AppColors.red200,
            300: AppColors.red300,
            400: AppColors.red400,
            500: AppColors.red500,
            600: AppColors.red600,
            700: AppColors.red700,
            800: AppColors.red800,
            900: AppColors.red900,
          },
        ),
      ).copyWith(
        secondary: AppColors.red500,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: AppColors.almostBlack,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: AppColors.almostBlack,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        backgroundColor: AppColors.red500,
      )),
      textTheme: theme.primaryTextTheme
          .copyWith(
            button: theme.primaryTextTheme.button?.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
          .apply(
            displayColor: Colors.white,
          ),
    );
  }
}
