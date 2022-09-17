import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home_view/controllers/article_cards_controller.dart';
import 'package:medium_app_clone/app/modules/home_view/views/widgets/medium_article_card/medium_article_card.dart';

class MediumSelectedArticles extends GetView<ArticleCardsController> {
  const MediumSelectedArticles({
    Key? key,
    this.isForYouSection = false,
  }) : super(key: key);
  final bool isForYouSection;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: const NeverScrollableScrollPhysics(),

      key: UniqueKey(),
      child: Column(
        children: <Widget>[
          ...List.generate(
            controller.articles.length,
            (index) => MediumArticleCard(
              article: controller.articles[index],
              isForYouArticleCard: isForYouSection,
            ),
          ),
        ],
      ),
    );
  }
}
