import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/themes/colors/colors.dart';

import 'text_themes.dart';

class MediumThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: MediumColors.primary,
    scaffoldBackgroundColor: MediumColors.primary,
    textTheme: MediumTextThemes.mediumTextThemes,
  );
}
