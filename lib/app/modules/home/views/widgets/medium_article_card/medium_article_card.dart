import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/data/article_card_model.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_article_card/cards_types/medium_for_you_article_card.dart';

import 'cards_types/medium_normal_article_card.dart';

class MediumArticleCard extends StatelessWidget {
  const MediumArticleCard({
    Key? key,
    required this.article,
    this.isForYouArticleCard = false,
  }) : super(key: key);

  final bool isForYouArticleCard;
  final ArticleCardModel article;
  @override
  Widget build(BuildContext context) {
    if (isForYouArticleCard) {
      return ForYouArticleCard(
        article: article,
      );
    }
    return NormalArticleCard(
      article:
      article,
    );
  }
}
