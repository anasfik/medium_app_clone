import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';

import '../../constants.dart';
import 'article_tags_chip.dart';

class ArticleReasonToShowWithExecuteIconsOrTags
    extends GetWidget<ArticleCardsController> {
  ArticleReasonToShowWithExecuteIconsOrTags({
    Key? key,
    required this.executeIcons,
    this.reasonToShow,
    this.replaceWithTags = false,
    this.tagsList = const <String>[],
  }) : super(
          key: key,
        );

  final ReasonToShow? reasonToShow;

  ReasonToShow get _defaultReason => ReasonToShow.basedOnHistory;
  final List<ExecuteIcons> executeIcons;
  late final String _reasonToShowText = controller.getReasonToShowText(
    reasonToShow: reasonToShow ?? _defaultReason,
  );
  final bool replaceWithTags;
  final List<String> tagsList;
  @override
  Widget build(BuildContext context) {
    assert(replaceWithTags ^ (reasonToShow != null),
        "you can set only one, either reasonToShow or replaceWithTags with tagsList");
    assert(tagsList.length <= 3, "you can set only 3 tags in maximum");
    assert(tagsList.isEmpty ^ replaceWithTags,
        "using a tagsList required to set replaceWithTags property to true");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            children: [
              if (!replaceWithTags) ...[
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.bookmark_add_outlined,
                color: Theme.of(context).colorScheme.primary.withOpacity(
                      homeTabBarViewArticleIconsOpacity,
                    ),
              ),
              Icon(
                Icons.remove_circle_outline_outlined,
                color: Theme.of(context).colorScheme.primary.withOpacity(
                      homeTabBarViewArticleIconsOpacity,
                    ),
              ),
              Icon(
                Icons.more_vert,
                color: Theme.of(context).colorScheme.primary.withOpacity(
                      homeTabBarViewArticleIconsOpacity,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
