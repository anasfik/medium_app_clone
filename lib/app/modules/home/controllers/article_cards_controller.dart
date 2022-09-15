import 'dart:math';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/article_card_model.dart';

class AtricleCardsController extends GetxController {
// Dumb data articles
// ! this is just for testing
  List<ArticleCardModel> articles = List.generate(
    10,
    (index) => ArticleCardModel(
      articleImage: "https://picsum.photos/200/300?random=${index * 2}",
      isSelectedForYouArticle: true,
      author: "anas fikhi",
      title:
          "some dummy title here idk man some dummy title here idk man some dummy",
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

enum ExecuteIcons {
  addBookmarks,
  showLessLikeThis,
}
