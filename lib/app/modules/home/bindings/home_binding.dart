import 'package:get/get.dart';

import '../controllers/article_cards_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/tab_bar_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );

    Get.put<MediumHomeTabController>(
      MediumHomeTabController(),
    );

    Get.put<ArticleCardsController>(ArticleCardsController());
  }
}
