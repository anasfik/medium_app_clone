import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/themes/colors/colors.dart';

import '../../home/constants.dart';
import 'text_themes.dart';

class MediumThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.dark(
      primary: MediumColors.black,
      secondary: MediumColors.black,
    ),
    primaryColor: MediumColors.primary,
    scaffoldBackgroundColor: MediumColors.primary,
    textTheme: MediumTextThemes.mediumTextThemes,
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MediumColors.black,
            width: indicatorHeight,
          ),
        ),
      ),
      unselectedLabelColor: MediumColors.black.withOpacity(.65),
      labelColor: MediumColors.black,
    ),
  );
}
