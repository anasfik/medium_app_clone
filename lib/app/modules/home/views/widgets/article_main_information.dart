import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/text_methods.dart';

import '../../constants.dart';

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
          child: Text(
            TextMethods.firstLettersToCapital(
              title,
            ),
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                // this will make the title look more bolder because the most bolder in this font isn't enough
                Shadow(
                  offset: const Offset(0, 0),
                  blurRadius: 0.5,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            maxLines: titleMaxLines,
            overflow: TextOverflow.ellipsis,
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
