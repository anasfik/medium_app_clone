import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/constants.dart';
import 'package:medium_app_clone/app/modules/home_view/controllers/article_cards_controller.dart';
import 'package:medium_app_clone/app/modules/home_view/views/widgets/medium_article_card/medium_article_card.dart';

import '../../../controllers/medium_recommended_articles_controller.dart';
import 'sub_widgets/medium_recommended_articles_title.dart';

class MediumRecommendedArticles
    extends GetView<MediumRecommendedArticlesController> {
  MediumRecommendedArticles({
    Key? key,
    this.isForYouSection = false,
  }) : super(key: key);
  final bool isForYouSection;
  final MediumRecommendedArticlesController
      mediumRecommendedArticlesController =
      Get.put(MediumRecommendedArticlesController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: const NeverScrollableScrollPhysics(),

      key: UniqueKey(),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 22.5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: searchMainMargin,
            ),
            child: MediumRecommendedArticlesTitle(),
          ),
          const SizedBox(
            height: 12.5,
          ),
          ...List.generate(
            controller.recommendedArticles.length,
            (index) => MediumArticleCard(
              article: controller.recommendedArticles[index],
            ),
          ),
        ],
      ),
    );
  }
}
