import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/views/home_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.leftToRight,
      title: "Medium app clone",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
