
import 'package:flutter/material.dart';

import '../../../../../../config/helpers/text_methods.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({
    Key? key,
    required this.title,
    required this.titleMaxLines,
  }) : super(key: key);

  final String title;
  final int titleMaxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      TextMethods.firstLettersToCapital(
        title,
      ),
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          // this will make the title look more bolder because the most bolder in this font isn't enough
          Shadow(
            offset: const Offset(0, 0),
            blurRadius: 0.5,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
      maxLines: titleMaxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
