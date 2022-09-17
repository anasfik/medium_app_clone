import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/data/article_card_model.dart';
import 'package:medium_app_clone/app/modules/home_view/controllers/article_cards_controller.dart';
import 'package:medium_app_clone/app/modules/home_view/views/widgets/medium_article_card/sub_widgets/article_date_information.dart';

import '../../../../../../data/article_card_execute_icon_model.dart';
import '../../../../../../config/constants.dart';
import 'article_execute_icons.dart';
import 'article_tags_chip.dart';

class ArticleReasonToShowWithExecuteIconsOrTags
    extends GetWidget<ArticleCardsController> {
  ArticleReasonToShowWithExecuteIconsOrTags({
    Key? key,
    required this.article,
    required this.executeIcons,
    this.reasonToShow,
    this.replaceWithTags = false,
    this.isNormalCard = false,
    this.tagsList = const <String>[],
  }) : super(
          key: key,
        );

  final ReasonToShow? reasonToShow;
  final bool isNormalCard;
  final ArticleCard article;
  ReasonToShow get _defaultReason => ReasonToShow.basedOnHistory;
  final List<ExecuteIcons> executeIcons;
  late final String _reasonToShowText = controller.getReasonToShowText(
    reasonToShow: reasonToShow ?? _defaultReason,
  );
  final bool replaceWithTags;
  final List<String> tagsList;
  @override
  Widget build(BuildContext context) {
    if (!isNormalCard) {
      assert(replaceWithTags ^ (reasonToShow != null),
          "you can set only one, either reasonToShow or replaceWithTags with tagsList");
      assert(tagsList.length <= 3, "you can set only 3 tags in maximum");
      assert(tagsList.isEmpty ^ replaceWithTags,
          "using a tagsList required to set replaceWithTags property to true");
    }

    if (isNormalCard) {
      assert(
          isNormalCard ==
              (tagsList.isEmpty ^ replaceWithTags || reasonToShow != null),
          "declaring that this a normal card is declaring that you can't use tagsList property, you can't use  reasonToShow property, you can't use replaceWithTags property, it allows only one thing at time");
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            children: [
              if (!replaceWithTags && !isNormalCard) ...[
                Text(
                  _reasonToShowText,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: homeTabBarViewArticleReasonToShowFontSize,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color:
                            Theme.of(context).colorScheme.primary.withOpacity(
                                  homeTabBarViewArticleReasonToShowOpacity,
                                ),
                      ),
                ),
              ] else if (isNormalCard) ...[
                ArticleDateInformation(
                  isForNormalCard: isNormalCard,
                  publishedAt: article.dateOfPublish,
                  lastReadAt: article.dateOfLastRead,
                  withStar: article.withStarEmoji,
                )
              ] else
                ...List.generate(
                  tagsList.length,
                  (index) => ArticleTagsChip(
                    tag: tagsList[index],
                  ),
                )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: CardExecuteIcons(
            executeIcons: executeIcons,
          ),
        )
      ],
    );
  }
}
