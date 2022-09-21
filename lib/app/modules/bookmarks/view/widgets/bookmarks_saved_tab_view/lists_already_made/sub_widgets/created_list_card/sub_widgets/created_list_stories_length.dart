import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_created_lists_controller.dart';

import '../../../../../../../../../config/themes/colors/colors.dart';

class CreatedListStoriesLength
    extends GetWidget<BookmarksCreatedListsController> {
  const CreatedListStoriesLength({
    super.key,
    this.singularWordOfObject = "story",
    this.pluralWordOfObject = "stories",
    this.length = 0,
  });

  final int length;
  final String pluralWordOfObject;
  final String singularWordOfObject;
  @override
  Widget build(BuildContext context) {
    return Text(
      showStoriesInfo(
        length,
        pluralWordOfObject: controller.pluralWordOfObject,
        singularWordOfObject: controller.singularWordOfObject,
      ),
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color: MediumColors.darkBlack,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        shadows: <Shadow>[
          Shadow(
            color: MediumColors.darkBlack,
            offset: const Offset(0.2, 0.2),
            blurRadius: 0,
          ),
          Shadow(
            color: MediumColors.darkBlack,
            offset: const Offset(-0.2, -0.2),
            blurRadius: 0,
          )
        ],
      ),
    );
  }
}

String showStoriesInfo(
  int storiesLength, {
  required String pluralWordOfObject,
  required String singularWordOfObject,
}) {
  late String afterWordToShow;
  if (storiesLength == 0) {
    afterWordToShow = 'No $pluralWordOfObject yet';
  } else if (storiesLength == 1) {
    afterWordToShow = '1 $singularWordOfObject';
  } else if (storiesLength > 1) {
    afterWordToShow = '$storiesLength $pluralWordOfObject';
  } else {
    afterWordToShow = 'No $pluralWordOfObject yet';
  }
  return afterWordToShow;
}
