import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

class ArticleTagsChip extends StatelessWidget {
  const ArticleTagsChip({
    Key? key,
    required this.tag,
    this.horizontalPadding = 10,
  }) : super(key: key);

  final double horizontalPadding;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Chip(
      visualDensity: const VisualDensity(horizontal: 0.0, vertical: -4),
      labelPadding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      padding: EdgeInsets.zero,
      label: Text(TextMethods.firstLettersToCapital(tag)),
    );
  }
}
