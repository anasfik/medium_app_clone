import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/data/article_card_model.dart';

import '../../controllers/article_cards_controller.dart';
import 'article_date_information.dart';
import 'article_main_information.dart';
import 'article_reason_to_show_with_execute_icons.dart';
import 'author_information.dart';

class MediumArticleCard extends StatelessWidget {
  const MediumArticleCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleCardModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(
            top: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            children: <Widget>[
              AuthorInformation(
                author: article.author,
                profile: article.authorProfileImage,
              ),
              SpacerBox(context),
              ArticleMainInformation(
                title: article.title,
                image: article.articleImage,
              ),
              ArticleDateInformation(
                publishedAt: article.dateOfPublish,
                lastReadAt: article.dateOfLastRead,
              ),
              const SizedBox(
                height: 5,
              ),
              ArticleReasonToShowWithExecuteIcons(
                reasonToShow: ReasonToShow.basedOnHistory,
                executeIcons: const <ExecuteIcons>[],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).dividerColor.withOpacity(.1),
          thickness: 1.1,
        ),
      ],
    );
  }
}

Widget SpacerBox(context) {
  return const SizedBox(
    height: 6,
  );
}
