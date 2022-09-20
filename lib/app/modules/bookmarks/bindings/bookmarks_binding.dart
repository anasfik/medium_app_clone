import 'package:get/get.dart';

import '../controllers/bookmarks_view_controller.dart';

class BookmarksBinding implements Bindings {
@override
void dependencies() {
  Get.put<BookmarksViewController>(BookmarksViewController());
  }
}