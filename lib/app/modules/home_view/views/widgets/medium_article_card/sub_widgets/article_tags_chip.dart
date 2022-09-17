import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

class ArticleTagsChip extends StatelessWidget {
  const ArticleTagsChip({
    Key? key,
    required this.tag,
    this.horizontalPadding = 10,
    this.verticalPadding = -4,
    this.textFontWeight,
  }) : super(key: key);

  final double horizontalPadding;
  final String tag;
  final double verticalPadding;
  final FontWeight? textFontWeight;
  @override
  Widget build(BuildContext context) {
    return Chip(
      visualDensity: VisualDensity(horizontal: 0.0, vertical: verticalPadding),
      labelPadding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      padding: EdgeInsets.zero,
      label: Text(
        TextMethods.firstLettersToCapital(tag),
        style: TextStyle(fontWeight: textFontWeight),
      ),
    );
  }
}
