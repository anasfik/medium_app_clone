import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/HELPERS/text_methods.dart';

import '../../controllers/article_cards_controller.dart';

class ArticleDateInformation extends GetWidget<ArticleCardsController> {
  ArticleDateInformation({
    Key? key,
    required this.publishedAt,
    required this.lastReadAt,
    this.separator = "-",
  }) : super(key: key);

  final DateTime publishedAt;
  final DateTime lastReadAt;
  late final String _formattedMonth = controller.getMonthAbrFromData(
    date: publishedAt,
  );
  String separator;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          TextMethods.firstLettersToCapital(
              "${publishedAt.day} $_formattedMonth"),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
                color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(separator),
        const SizedBox(
          width: 3,
        ),
        Text(
          TextMethods.firstLettersToCapital("${lastReadAt.minute} min read"),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
                color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              ),
        ),
      ],
    );
  }
}
