import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/bookmarks_view.dart';
import 'package:medium_app_clone/app/modules/bookmarks/bookmarks_view.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/bookmarks_header.dart';
import 'package:medium_app_clone/app/modules/search/bindings/search_view_binding.dart';
import 'package:medium_app_clone/app/modules/search/view/search_view.dart';

import '../modules/bookmarks/bindings/bookmarks_binding.dart';
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
      name: _Paths.homeViewPath,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.screensViewer,
      page: () => const ScreensViewer(),
      binding:  ScreensViewerBinding(),
    ),
     GetPage(
      name: _Paths.searchViewPath,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
        GetPage(
      name: _Paths.bookmarksViewPath,
      page: () => BookmarksView(),
      binding: BookmarksBinding(),
      
    ),
  ];
}
