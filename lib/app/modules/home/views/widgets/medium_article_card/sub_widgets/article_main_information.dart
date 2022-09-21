import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

import '../../../../../../config/constants.dart';
import 'article_title.dart';

class ArticleMainInformation extends StatelessWidget {
  const ArticleMainInformation({
    Key? key,
    required this.title,
    required this.image,
    this.titleExpandsBy = 6,
    this.imageBoxFit = BoxFit.cover,
    this.titleMaxLines = 3,
  }) : super(key: key);

  final String image;
  final String title;
  final int titleExpandsBy;
  final int titleMaxLines;
  final BoxFit imageBoxFit;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: titleExpandsBy,
          child: ArticleTitle(
            title: title,
            titleMaxLines: titleMaxLines,
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
            image,
            height: homeTabBarViewArticleMainInformationHeight,
            fit: imageBoxFit,
            
          ),
        )
      ],
    );
  }
}
