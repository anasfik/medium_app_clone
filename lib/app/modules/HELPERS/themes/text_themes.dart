import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumTextThemes {
  static TextTheme mediumTextThemes = GoogleFonts.latoTextTheme().copyWith(
    titleLarge: GoogleFonts.josefinSansTextTheme().titleLarge,
    labelMedium: GoogleFonts.josefinSansTextTheme().labelMedium,
  );
}
