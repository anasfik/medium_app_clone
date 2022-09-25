import 'package:medium_app_clone/app/models/medium_article_card_execute_icon_model.dart';
import 'package:medium_app_clone/app/models/medium_article_card_model.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_article_card/medium_article_card.dart';

class RecentlyViewedArticle extends MediumArticleCard {
  const RecentlyViewedArticle({
    super.key,
    required super.article,
    super.isForYouArticleCard = false,
    super.executeIcons = const <ExecuteIcons>[ExecuteIcons.addBookmarks],
  });
}
