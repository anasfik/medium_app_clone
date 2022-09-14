import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/themes/colors/colors.dart';

import 'text_themes.dart';

class MediumThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: MediumColors.primary,
    scaffoldBackgroundColor: MediumColors.primary,
    textTheme: MediumTextThemes.mediumTextThemes,
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MediumColors.black,
            width: 1.5,
          ),
        ),
      ),
      unselectedLabelColor: MediumColors.black.withOpacity(.65),
      labelColor: MediumColors.black,
    
    ),
  );
}
