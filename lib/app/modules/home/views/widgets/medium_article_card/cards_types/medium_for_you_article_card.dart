import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/models/medium_article_card_model.dart';

import '../../../../../../models/medium_article_card_execute_icon_model.dart';
import '../../../../../../config/constants.dart';
import '../../../../controllers/article_cards_controller.dart';
import '../../medium_divide.dart';
import '../sub_widgets/article_date_information.dart';
import '../sub_widgets/article_main_information.dart';
import '../sub_widgets/article_reason_to_show_with_execute_icons.dart';
import '../sub_widgets/author_information.dart';

class ForYouArticleCard extends StatelessWidget {
  const ForYouArticleCard({
    Key? key,
    required this.article,
    this.executeIcons = const <ExecuteIcons>[
      ExecuteIcons.addBookmarks,
      ExecuteIcons.showLessLikeThis,
      ExecuteIcons.moreOptions,
    ],
  }) : super(key: key);

  final ArticleCard article;
  final List<ExecuteIcons> executeIcons;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: homeTabBarViewArticleHorizontalPadding,
          ),
          margin: const EdgeInsets.only(
            top: homeTabBarViewArticlesVerticalSeparatorMargin,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            children: <Widget>[
              ArticleAuthorInformation(
                author: article.author,
                profile: article.authorProfileImage,
              ),
              const SizedBox(
                height: homeTabBarViewArticleBetweenAuthorAndTitleMargin,
              ),
              ArticleMainInformation(
                title: article.title,
                image: article.articleImage,
              ),
              ArticleDateInformation(
                publishedAt: article.dateOfPublish,
                lastReadAt: article.dateOfLastRead,
                withStar: article.withStarEmoji,
              ),
              const SizedBox(
                height: 5,
              ),
              ArticleReasonToShowWithExecuteIconsOrTags(
                article: article,
                reasonToShow: article.tags.isNotEmpty
                    ? null
                    : ReasonToShow.basedOnHistory,
                executeIcons: executeIcons,
                replaceWithTags: article.tags.isNotEmpty,
                tagsList: article.tags,
              ),
            ],
          ),
        ),
        const MediumDivider(),
      ],
    );
  }
}
