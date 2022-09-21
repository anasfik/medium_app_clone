import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/constants.dart';

import '../../../../../../controllers/created_bookmark_list_model.dart';
import 'sub_widgets/created_list_card_title.dart';
import 'sub_widgets/created_list_stories_length.dart';
import 'sub_widgets/created_list_stories_scroll_view/created_list_stories_image.dart/created_list_stories_scroll.dart';

class CreatedListCard extends StatelessWidget {
  const CreatedListCard({
    super.key,
    required this.createdBookmarkList,
  });

  final CreatedBookmarkList createdBookmarkList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
            vertical: newListCardVerticalPadding,
          ) +
          const EdgeInsets.only(
            left: newListCardHorizontalPadding,
          ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(
          newListCardBorderRadius,
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CreatedListCardTitle(
            title: createdBookmarkList.name,
          ),
          CreatedListStoriesInfo(
            length: createdBookmarkList.storiesList.length,
            pluralWordOfObject: createdBookmarkList.name,
          ),
          CreatedListStoriesImagesScrollView(
            storiesList: createdBookmarkList.storiesList,
          ),
        ],
      ),
    );
  }
}
