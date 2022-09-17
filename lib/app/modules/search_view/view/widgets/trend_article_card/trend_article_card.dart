import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/data/medium_trends_model.dart';

import 'sub_widgets/article_order_number.dart';
import 'sub_widgets/trend_article_author.dart';
import 'sub_widgets/trend_article_date_information.dart';
import 'sub_widgets/trend_article_title.dart';

class TrendArticleCard extends StatelessWidget {
  const TrendArticleCard({
    super.key,
    required this.trend,
    required this.order,
  });

  final TrendArticle trend;
  final int order;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: OrderTrendNumber(
              number: order,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 7.5,
              ),
              TrendArticleArticleAuthorInformation(
                author: trend.author,
                profile: trend.authorProfileImage,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 7.5,
              ),
              TrendArticleTitle(
                title: trend.title,
                titleMaxLines: 3,
              ),
              const SizedBox(
                height: 7.5,
              ),
              TrendArticleDateInformation(
                lastReadAt: trend.dateOfLastRead,
                publishedAt: trend.dateOfPublish,
                withStar: trend.withStar,
              ),
              const SizedBox(
                height: 22.5,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
