import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_created_lists_controller.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';
import 'package:medium_app_clone/helpers/extensions/int_extension/int_extension.dart';

import '../../../../../../../../../config/constants.dart';
import '../../../../../../../../../config/themes/colors/colors.dart';

class CreatedListStoriesInfo
    extends GetWidget<BookmarksCreatedListsController> {
  const CreatedListStoriesInfo({
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: newListCardHorizontalPadding,
      ),
      child: Text(
        length
            .toStringWithWord(
              pluralWordOfObject: controller.pluralWordOfObject,
              singularWordOfObject: controller.singularWordOfObject,
            )
            .firstLettersToCapital(),
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: MediumColors.darkBlack.withOpacity(.9),
              fontSize: 12,
              fontWeight: FontWeight.w100,
            ),
      ),
    );
  }
}
