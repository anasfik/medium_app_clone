import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/tab_bar_controller.dart';

import 'medium_article_cards_list.dart';

class MediumTabBarView extends GetView<MediumHomeTabController> {
  const MediumTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: controller.tabController,
        children: const <Widget>[
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
          MediumSelectedArticles(),
        ]);
  }
}
