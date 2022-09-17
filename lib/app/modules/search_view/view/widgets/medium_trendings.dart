import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/constants.dart';

import '../../controllers/trends_controller.dart';
import 'trend_article_card/trend_article_card.dart';
import 'trending_title.dart';

class MediumTrendings extends GetView<TrendsController> {
  MediumTrendings({
    super.key,
    required this.indexWhereToInjectTheDailyHighlightsOfMedium,
  });

  final TrendsController trendsController = Get.put(TrendsController());
  final double indexWhereToInjectTheDailyHighlightsOfMedium;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: searchMainMargin,
      ),
      child: Column(
        children: <Widget>[
          const TrendingTitle(),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(
            controller.trendsArticles.length,
            (index) => TrendArticleCard(
              trend: controller.trendsArticles[index],
              order: index,
            ),
          )
        ],
      ),
    );
  }
}
