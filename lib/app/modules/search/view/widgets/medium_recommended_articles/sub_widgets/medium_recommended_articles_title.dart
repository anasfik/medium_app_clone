import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/search/view/widgets/trending_title.dart';

class MediumRecommendedArticlesTitle extends TrendingTitle {
  const MediumRecommendedArticlesTitle({
    super.key,
    super.title = 'Recommended for you',
    super.iconWidget = const Icon(
      Icons.library_books_outlined,
      size: 23,
    ),
  });
}
