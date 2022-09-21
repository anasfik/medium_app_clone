import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_view_controller.dart';
import 'package:medium_app_clone/helpers/string_extension/string_extension.dart';

import '../../../../config/constants.dart';

enum PanTheme { light, dark }

class MediumButton extends GetWidget<BookmarksViewController> {
  const MediumButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.backgroundColor,
    this.onPanThemeType = PanTheme.dark,
    this.width = bookmarksHeaderButtonWidth,
    this.height = bookmarksHeaderButtonHeight,
  });

  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final PanTheme onPanThemeType;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookmarksViewController>(
      // id: controller.idToUpdate,
      global: false,
      init: BookmarksViewController(),
      builder: (controller) {
        return GestureDetector(
          onTap: onPressed,
          onPanDown: (details) {
            controller.onTapDown(context, onPanThemeType);
          },
          onPanCancel: () {
            controller.onTapCancel();
          },
          onPanEnd: (details) {
            controller.onTapCancel();
          },
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: controller.dynamicHeaderButtonBgColor ?? backgroundColor,
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
