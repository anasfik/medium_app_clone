import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/themes/colors/colors.dart';

import '../../constants.dart';
import 'text_themes.dart';

class MediumThemes {
  static ThemeData lightTheme =
      ThemeData(brightness: Brightness.light).copyWith(
    colorScheme: ColorScheme.dark(
      primary: MediumColors.black,
      secondary: MediumColors.black,
    ),
    primaryColor: MediumColors.white,
    scaffoldBackgroundColor: MediumColors.white,
    textTheme: MediumTextThemes.mediumTextThemes,
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MediumColors.black,
            width: homeTabBarIndicatorHeight,
          ),
        ),
      ),
      unselectedLabelColor: MediumColors.black.withOpacity(.65),
      labelColor: MediumColors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MediumColors.green,
      enableFeedback: false,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: MediumColors.grey,
      labelStyle: TextStyle(
        color: MediumColors.black,
        fontSize: homeHeaderTabBarViewArticleTagsChipsFontSize,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: MediumColors.grey,
      prefixIconColor: MediumColors.darkGrey,
      hintStyle: TextStyle(
        color: MediumColors.darkGrey,
        fontWeight: FontWeight.bold,
      ),
      alignLabelWithHint: false,
      contentPadding: EdgeInsets.zero,
      filled: true,
    ),
  );
}
