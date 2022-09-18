import 'package:medium_app_clone/app/modules/search_view/view/widgets/trend_article_card/sub_widgets/trend_article_date_information.dart';

class HighlightCardDateInformation extends TrendArticleDateInformation {
  HighlightCardDateInformation({
    super.key,
    required super.lastReadAt,
    required super.publishedAt,
    super.textColor,
    super.withStar,
  });
}
