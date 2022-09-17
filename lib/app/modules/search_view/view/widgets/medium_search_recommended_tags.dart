import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/search_view/view/widgets/medium_search_tags_chip.dart';

import '../../../../config/constants.dart';

class MediumSearchRecommendedTags extends StatelessWidget {
  const MediumSearchRecommendedTags({super.key, required this.tags});

  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...List.generate(
            tags.length,
            (index) => Container(
              margin: const EdgeInsets.only(right: searchRecommendedTagsRightMargin),
              child: MediumSearchTagChip(
                horizontalPadding: searchRecommendedTagsHorizontalPadding,
                verticalPadding: searchRecommendedTagsVerticalPadding,
                tag: tags[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
