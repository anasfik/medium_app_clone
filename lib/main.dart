import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/HELPERS/themes/themes.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.leftToRight,
      title: "Medium app clone",
      theme: MediumThemes.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
