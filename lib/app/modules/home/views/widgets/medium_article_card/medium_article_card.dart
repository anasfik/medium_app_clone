import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/models/medium_article_card_execute_icon_model.dart';
import 'package:medium_app_clone/app/models/medium_article_card_model.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_article_card/cards_types/medium_for_you_article_card.dart';

import 'cards_types/medium_normal_article_card.dart';

class MediumArticleCard extends StatelessWidget {
  const MediumArticleCard({
    Key? key,
    required this.article,
    this.executeIcons,
    this.isForYouArticleCard = false,
  }) : super(key: key);

  final bool isForYouArticleCard;
  final ArticleCard article;
  final List<ExecuteIcons>? executeIcons;
  @override
  Widget build(BuildContext context) {
    if (isForYouArticleCard) {
      if (executeIcons != null) {
        log("please, consider that \"for you\" article cards should include the three execution icon buttons, trying to just re assign a new collection is fine, but just put this in mind",
            name: "Gwhyyy Reminder");
        return ForYouArticleCard(
          article: article,
          executeIcons: executeIcons!,
        );
      }
      return ForYouArticleCard(
        article: article,
      );
    }
    if (executeIcons != null) {
      return NormalArticleCard(
        article: article,
        executeIcons: executeIcons!,
      );
    }
    return NormalArticleCard(
      article: article,
    );
  }
}
