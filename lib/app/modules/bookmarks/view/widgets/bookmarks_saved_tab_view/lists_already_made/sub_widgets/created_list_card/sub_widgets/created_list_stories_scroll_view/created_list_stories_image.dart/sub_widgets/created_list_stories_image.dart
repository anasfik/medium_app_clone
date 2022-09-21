import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/models/medium_article_card_model.dart';

class CreatedListStoriesImage extends StatelessWidget {
  const CreatedListStoriesImage({
    super.key,
    required this.story,
  });

  final ArticleCard story;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 120,
      height: 90,
      child: Image.network(
        story.articleImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
