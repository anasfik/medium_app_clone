import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/article_card_model.dart';

class ArticleCardsController extends GetxController {
// Dumb data articles
// ! this is just for testing
  List<ArticleCard> articles = List.generate(
    10,
    (index) => ArticleCard(
      articleImage: "https://picsum.photos/200/300?random=${index * 2}",
      isSelectedForYouArticle: true,
      author: "anas fikhi",
      title: "Firebase Remote Config with Flutter",
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
        return "Based on your history";

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
