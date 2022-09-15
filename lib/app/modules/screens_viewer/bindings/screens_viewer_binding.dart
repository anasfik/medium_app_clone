import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/screens_viewer/controllers/screens_viewer_controller.dart';

class ScreensViewerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ScreensViewerController>(ScreensViewerController());
  }
}
