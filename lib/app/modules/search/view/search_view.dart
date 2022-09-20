import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search_view_controller.dart';
import 'widgets/medium_divider.dart';
import 'widgets/medium_highlights/medium_highlights.dart';
import 'widgets/medium_recommended_articles/medium_recommended_articles.dart';
import 'widgets/medium_search_header.dart';
import 'widgets/medium_search_recommended_tags.dart';
import 'widgets/medium_search_search_bar.dart';
import 'widgets/medium_trendings.dart';

class SearchView extends GetView<SearchViewController> {
  SearchView({Key? key}) : super(key: key);
  final SearchViewController searchViewController =
      Get.put<SearchViewController>(SearchViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const MediumSearchHeader(),
              const MediumSearchBar(),
              const SizedBox(
                height: 17.5,
              ),
              MediumSearchRecommendedTags(
                tags: controller.tagsList,
              ),
              const SizedBox(
                height: 12.5,
              ),
              const MediumSearchDivider(),
              const SizedBox(
                height: 12.5,
              ),
              MediumTrendings(),
              HighlightsOnMedium(),
              MediumRecommendedArticles(),
            ],
          ),
        ),
      ),
    );
  }
}
