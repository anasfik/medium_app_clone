import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/constants.dart';

import '../../../../../../controllers/created_bookmark_list_model.dart';
import 'sub_widgets/created_list_card_title.dart';
import 'sub_widgets/created_list_stories_length.dart';

class CreatedListCard extends StatelessWidget {
  const CreatedListCard({
    super.key,
    required this.createdBookmarkList,
  });

  final CreatedBookmarkList createdBookmarkList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(
          bookmarksHeaderButtonBorderRadius,
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          width: 1,
        ),
      ),
      child: Column(
        children: <Widget>[
          CreatedListCardTitle(
            title: createdBookmarkList.name,
          ),
          CreatedListStoriesLength(
            length: createdBookmarkList.storiesList.length,
            pluralWordOfObject: createdBookmarkList.name,
            
          ),
        ],
      ),
    );
  }
}
