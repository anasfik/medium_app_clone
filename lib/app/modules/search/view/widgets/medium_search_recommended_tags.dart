import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/search/view/widgets/medium_search_tags_chip.dart';

import '../../../../config/constants.dart';

class MediumSearchRecommendedTags extends StatelessWidget {
  const MediumSearchRecommendedTags({super.key, required this.tags});

  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          right: searchMainMargin,
        ),
        child: Row(
          children: <Widget>[
            ...List.generate(
              tags.length,
              (index) => Container(
                margin: const EdgeInsets.only(
                  left: searchRecommendedTagsRightMargin,
                ),
                child: MediumSearchTagChip(
                  horizontalPadding: searchRecommendedTagsHorizontalPadding,
                  verticalPadding: searchRecommendedTagsVerticalPadding,
                  textFontWeight: FontWeight.w500,
                  tag: tags[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
