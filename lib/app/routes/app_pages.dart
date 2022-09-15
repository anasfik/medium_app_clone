import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/screens_viewer/bindings/screens_viewer_binding.dart';
import '../modules/screens_viewer/view/screens_viewer.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const home = Routes.home;
  static const screensViewer = Routes.screensViewer;

  static final routes = [
    GetPage(
      name: _Paths.homePath,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.screensViewer,
      page: () => ScreensViewer(),
      binding:  ScreensViewerBinding(),
    ),
  ];
}
