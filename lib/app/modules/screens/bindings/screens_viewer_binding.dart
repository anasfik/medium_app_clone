import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';
import 'package:medium_app_clone/app/modules/screens/controllers/screens_viewer_controller.dart';
import 'package:medium_app_clone/app/modules/search/controllers/search_view_controller.dart';

class ScreensViewerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ScreensViewerController>(ScreensViewerController());
    Get.put<HomeController>(HomeController());
    Get.put<SearchViewController>( SearchViewController());
    
  }
}
