import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/search_view/view/widgets/medium_search_tags_chip.dart';

class MediumSearchRecommendedTags extends StatelessWidget {
  const MediumSearchRecommendedTags({super.key, required this.tags});

  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[

          ...List.generate(tags.length, (index) => MediumSearchTagChip(tag: tags[index],),),
        ],
      ),
    );
  }
}
