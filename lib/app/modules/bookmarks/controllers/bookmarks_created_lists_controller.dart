import 'package:get/get.dart';
import 'package:medium_app_clone/app/models/medium_article_card_model.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';

import 'created_bookmark_list_model.dart';

class BookmarksCreatedListsController extends GetxController {
  String singularWordOfObject = "story";
  String pluralWordOfObject = "stories";

  List<CreatedBookmarkList> createdLists = [
    CreatedBookmarkList(
      name: "reading list",
      storiesList: <ArticleCard>[
        ...List.from(
          Get.find<ArticleCardsController>().articles.take(4),
        )
      ],
      isPrivate: true,
    ),
    CreatedBookmarkList(
      name: "flutter advanced tutorials",
      storiesList: <ArticleCard>[
        ...List.from(
          Get.find<ArticleCardsController>().articles.take(1),
        ),
      ],
    ),
  ];
}
