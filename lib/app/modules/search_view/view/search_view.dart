import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search_view_controller.dart';
import 'widgets/medium_search_header.dart';
import 'widgets/medium_search_recommended_tags.dart';
import 'widgets/medium_search_search_bar.dart';

class SearchView extends GetView<SearchViewController> {
  SearchView({Key? key}) : super(key: key);
  final SearchViewController searchViewController =
      Get.put<SearchViewController>(SearchViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const MediumSearchHeader(),
            const MediumSearchBar(),
            MediumSearchRecommendedTags(
              tags: controller.tagsList,
            )
          ],
        ),
      ),
    );
  }
}
