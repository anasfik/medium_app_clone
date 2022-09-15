import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_article_card.dart';

class MediumSelectedArticles extends GetView<AtricleCardsController> {
  const MediumSelectedArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            ...List.generate(
              controller.articles.length,
              (index) => MediumArticleCard(
                article: controller.articles[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
