import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home_view/bindings/home_binding.dart';

import 'app/config/helpers/themes/themes.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.leftToRight,
      title: "Medium app clone",
      initialBinding: HomeBinding(),
      theme: MediumThemes.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.screensViewer,
      getPages: AppPages.routes,
    ),
  );
}
