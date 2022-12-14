import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

import '../../../../../../config/constants.dart';

class ArticleAuthorInformation extends StatelessWidget {
  const ArticleAuthorInformation({
    Key? key,
    required this.author,
    required this.profile,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  final FontWeight fontWeight;
  final String author;
  final String profile;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: homeTabBarViewArticleAuthorProfileImageSize,
          backgroundImage: NetworkImage(
            profile,
          ),
        ),
        const SizedBox(
          width: homeTabBarViewArticleAuthorInformationSeparatorPadding,
        ),
        AutoSizeText(
          
            author.firstLettersToCapital(),
          
          maxLines: 1,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: fontWeight,
                letterSpacing: 0,
                color: Theme.of(context).colorScheme.primary.withOpacity(
                      homeTabBarViewArticleAuthorNameOpacity,
                    ),
              ),
        ),
      ],
    );
  }
}
