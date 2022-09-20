import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_article_card/sub_widgets/author_information.dart';

import '../../../../../../config/constants.dart';
import '../../../../../../../helpers/string_extension/string_methods.dart';

class HighlightCardCornerInformation extends ArticleAuthorInformation {
  const HighlightCardCornerInformation({
    super.key,
    required super.author,
    required super.profile,
    super.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            profile,
            width: 22.5,
            height: 22.5,
            fit: BoxFit.fill,
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
                color: Theme.of(context).primaryColor,
              ),
        ),
      ],
    );
  }
}
