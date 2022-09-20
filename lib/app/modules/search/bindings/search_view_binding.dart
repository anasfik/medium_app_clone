import 'package:get/get.dart';

import '../controllers/search_view_controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SearchViewController>(SearchViewController());
  }
}
