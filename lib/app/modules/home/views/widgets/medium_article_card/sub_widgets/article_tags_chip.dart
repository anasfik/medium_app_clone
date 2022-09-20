import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:medium_app_clone/helpers/string_extension/string_extension.dart';

class ArticleTagsChip extends StatelessWidget {
  const ArticleTagsChip({
    Key? key,
    required this.tag,
    this.horizontalPadding = 10,
    this.verticalPadding = -4,
    this.textFontWeight,
    this.ableToBeActiveOnTouch = false,
  }) : super(key: key);

  final double horizontalPadding;
  final String tag;
  final double verticalPadding;
  final FontWeight? textFontWeight;
  final bool ableToBeActiveOnTouch;
  @override
  Widget build(BuildContext context) {
    return ObxValue(
        (data) => GestureDetector(
              onPanCancel: () {
                data.value = false;
              },
              onPanDown: (details) {
                if (ableToBeActiveOnTouch) {
                  data.value = true;
                }
              },
              onPanEnd: (details) {
                data.value = false;
              },
              child: Chip(
                backgroundColor: data.value
                    ? Theme.of(context).colorScheme.primary.withOpacity(.1)
                    : null,
                visualDensity:
                    VisualDensity(horizontal: 0.0, vertical: verticalPadding),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                ),
                padding: EdgeInsets.zero,
                label: Text(
                  tag.firstLettersToCapital(),
                  style: TextStyle(fontWeight: textFontWeight),
                ),
              ),
            ),
        false.obs);
  }
}
