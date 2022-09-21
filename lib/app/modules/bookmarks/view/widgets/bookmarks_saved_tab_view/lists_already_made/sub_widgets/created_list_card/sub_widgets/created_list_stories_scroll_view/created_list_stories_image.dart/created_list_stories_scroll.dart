import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_created_lists_controller.dart';

import '../../../../../../../../../../../models/medium_article_card_model.dart';
import 'sub_widgets/created_list_stories_image.dart';

class CreatedListStoriesImagesScrollView
    extends GetView<BookmarksCreatedListsController> {
  const CreatedListStoriesImagesScrollView(
      {super.key, required this.storiesList});

  final List<ArticleCard> storiesList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...List.generate(
            storiesList.length,
            (index) => CreatedListStoriesImage(
              story: storiesList[index],
            ),
          ),
        ],
      ),
    );
  }
}
