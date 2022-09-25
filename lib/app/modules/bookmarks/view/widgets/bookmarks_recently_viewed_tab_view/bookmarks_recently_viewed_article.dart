import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/recently_viewed_articles_controller.dart';
import 'widgets/recently_viewed_article.dart';

class RecentlyViewedArticlesTabView extends GetView<RecentlyViewedArticlesController> {
  RecentlyViewedArticlesTabView({super.key});

  RecentlyViewedArticlesController recentlyViewedArticlesController =
      Get.put(RecentlyViewedArticlesController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ...List.generate(
            recentlyViewedArticlesController.recentViewedArticles.length,
            (index) => RecentlyViewedArticle(
              article:
                  recentlyViewedArticlesController.recentViewedArticles[index],
            ),
          ),
        ],
      ),
    );
  }
}
