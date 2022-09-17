import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/data/medium_trends_model.dart';

import 'sub_widgets/trend_article_author.dart';
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
      children: <Widget>[
        Expanded(
          flex: 1,
          child: OrderTrendNumber(
            number: order,
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                TrendArticleArticleAuthorInformation(
                  author: trend.author,
                  profile: trend.authorProfileImage,
                ),
                const SizedBox(
                  height: 7.5,
                ),
                TrendArticleTitle(
                  title: trend.title,
                  titleMaxLines: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ))
      ],
    );
  }
}

class OrderTrendNumber extends StatelessWidget {
  const OrderTrendNumber({super.key, required this.number});

  final int number;
  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString().padLeft(2, "0"),
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: Theme.of(context).colorScheme.primary.withOpacity(.1),
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          Shadow(
            offset: const Offset(0.0, 0.0),
            blurRadius: 1.0,
            color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          ),
        ],
      ),
    );
  }
}
