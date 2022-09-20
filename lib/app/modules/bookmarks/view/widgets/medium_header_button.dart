import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_tabs_view_controller.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_view_controller.dart';
import 'package:medium_app_clone/helpers/string_extension/string_extension.dart';

import '../../../../config/constants.dart';

class MediumHeaderButton extends GetWidget<BookmarksViewController> {
  const MediumHeaderButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookmarksViewController>(
      id: controller.idToUpdate,
      builder: (controller) {
        return GestureDetector(
          onTap: onPressed,
          onPanDown: (details) {
            controller.onTapDown(context);
          },
          onPanCancel: () {
            controller.onTapCancel();
          },
          onPanEnd: (details) {
            controller.onTapCancel();
          },
          child: Container(
            width: bookmarksHeaderButtonWidth,
            height: bookmarksHeaderButtonHeight,
            decoration: BoxDecoration(
              color: controller.dynamicHeaderButtonBgColor ??
                  Theme.of(context).buttonTheme.colorScheme!.primary,
              borderRadius: BorderRadius.circular(
                bookmarksHeaderButtonBorderRadius,
              ),
            ),
            child: Center(
              child: Text(
                text.firstLettersToCapital(),
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w100,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
