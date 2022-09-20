import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medium_app_clone/app/config/helpers/random_dummy_data/random_data.dart';

import '../../../data/medium_article_card_model.dart';

class ArticleCardsController extends GetxController {
// Dumb data articles
// ! this is just for testing
  List<ArticleCard> articles = List.generate(
    10,
    (index) => ArticleCard(
      articleImage: "https://picsum.photos/200/300?random=${index * 2}",
      isSelectedForYouArticle: true,
      author: "anas fikhi",
      title: RandomData().randomTitle(),
      authorProfileImage: "https://picsum.photos/200/300?random=${index * 2}",
      dateOfPublish: DateTime.now().subtract(
        Duration(
          minutes: Random().nextInt(60),
        ),
      ),
      dateOfLastRead: DateTime.now().subtract(
        Duration(
          minutes: 20 - Random().nextInt(20),
        ),
      ),
      tags: index == 0 ? ["Flutter", "Dart"] : [],
      withStarEmoji: Random().nextInt(10) > 5,
    ),
  );

  //
  String getMonthAbrFromData({required DateTime date}) {
    return DateFormat.MMM().format(date);
  }

  String getReasonToShowText({required ReasonToShow reasonToShow}) {
    switch (reasonToShow) {
      case ReasonToShow.basedOnHistory:
        return "based on your history";
      case ReasonToShow.lastRead:
        return "based on last reads";
      case ReasonToShow.selectedForYou:
        return "selected for you";

      default:
        return "";
    }
  }
}

enum ReasonToShow {
  selectedForYou,
  lastRead,
  mostPopular,
  basedOnHistory,
}
