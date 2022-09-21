import 'package:medium_app_clone/app/models/medium_article_card_model.dart';

class CreatedBookmarkList {
  static int idCounter = 0;

  int id = idCounter;
  String name;
  List<ArticleCard> storiesList;
  bool isPrivate;
  
  CreatedBookmarkList({
    required this.name,
    required this.storiesList,
    this.isPrivate = false,
  }) {
    id = idCounter++;
  }
}
