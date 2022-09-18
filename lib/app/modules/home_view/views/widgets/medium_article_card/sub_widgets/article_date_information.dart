import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

import '../../../../../../config/constants.dart';
import '../../../../controllers/article_cards_controller.dart';

class ArticleDateInformation extends GetWidget<ArticleCardsController> {
  ArticleDateInformation({
    Key? key,
    required this.publishedAt,
    required this.lastReadAt,
    this.spaceBetweenInformations = 3,
    this.withStar = false,
    this.separator = "-",
    this.starEmoji = "✨",
    this.isForNormalCard = false,
    this.textColor,
  }) : super(key: key);

  final DateTime publishedAt;
  final DateTime lastReadAt;
  final String separator;
  final double spaceBetweenInformations;
  final bool withStar;
  final String starEmoji;
  final bool isForNormalCard;
  final Color? textColor;
  late final String _formattedMonth = controller.getMonthAbrFromData(
    date: publishedAt,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          TextMethods.firstLettersToCapital(
              "${publishedAt.day} $_formattedMonth"),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: homeTabBarViewArticleDateInformationFontSize,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
                color: textColor ??
                    Theme.of(context).colorScheme.primary.withOpacity(
                        homeTabBarViewArticleDateInformationsOpacity),
              ),
        ),
        SizedBox(
          width: spaceBetweenInformations,
        ),
        Text(separator),
        SizedBox(
          width: spaceBetweenInformations,
        ),
        Text(
          TextMethods.firstLettersToCapital("${lastReadAt.minute} min read"),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: isForNormalCard
                    ? homeTabBarViewArticleDateInformationFontSizeForNormalCard
                    : homeTabBarViewArticleDateInformationFontSize,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
                color: textColor ??
                    Theme.of(context).colorScheme.primary.withOpacity(
                        homeTabBarViewArticleDateInformationsOpacity),
              ),
        ),
        SizedBox(
          width: spaceBetweenInformations * 2,
        ),
        if (withStar) Text(starEmoji),
      ],
    );
  }
}
