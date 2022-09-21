import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_saved_tab_view_controller.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';

import '../../../../../../../config/constants.dart';
import '../new_list_button/new_list_button.dart';
import 'sub_widgets/new_list_card_bookmark_circular_button.dart';
import 'sub_widgets/new_list_title.dart';

class CreateNewListCard extends GetView<BookmarksSavedTabViewController> {
  const CreateNewListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(newListCardBorderRadius),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: newListCardHorizontalPadding,
            vertical: newListCardVerticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const NewListTitle(),
              const SizedBox(
                height: 40,
              ),
              NewListButton(
                backgroundColor: Theme.of(context).colorScheme.primary,
                text: "start a list",
              ),
            ],
          ),
        ),
        Positioned(
          top: closeButtonTopSpace,
          right: closeButtonRightSpace,
          child: Icon(
            Icons.close,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const Positioned(
          bottom: -newListBookmarkButtonBottomPosition,
          right: -newListBookmarkButtonRightPosition,
          child: NewListCardBookmarkCircularButton(),
        )
      ],
    );
  }
}
