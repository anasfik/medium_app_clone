import 'dart:math';

import 'package:get/get.dart';

import '../../../data/medium_article_card_model.dart';

class MediumRecommendedArticlesController extends GetxController {
// Dumb data articles
// ! this is just for testing
  List<ArticleCard> recommendedArticles = List.generate(
    6,
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
}
