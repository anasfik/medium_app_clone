import 'package:flutter/material.dart';

import '../../../../../../../helpers/string_extension/string_extension.dart';

class ArticleTitle extends StatelessWidget {
  ArticleTitle({
    Key? key,
    required this.title,
    required this.titleMaxLines,
    this.textColor,
  }) : super(key: key);

  final String title;
  final int titleMaxLines;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      
        title.firstLettersToCapital(),
      
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: textColor,
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          // this will make the title look more bolder because the most bolder in this font isn't enough
          Shadow(
            offset: const Offset(0, 0),
            blurRadius: 0.5,
            color: textColor ?? Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
      maxLines: titleMaxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
