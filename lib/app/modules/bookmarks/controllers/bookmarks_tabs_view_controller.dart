import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/models/medium_tab_model.dart';

import '../view/widgets/bookmarks_hightlights_tab_view/bookmarks_hightlights_tab_view.dart';
import '../view/widgets/bookmarks_recently_viewed_tab_view/bookmarks_recently_viewed_article.dart';
import '../view/widgets/bookmarks_saved_tab_view/bookmarks_saved_tab_view.dart';

class BookmarksTabsViewController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List<TabModel> tabs = <TabModel>[
    TabModel(
      tab: const Tab(
        text: "Saved",
      ),
      widget: const BookmarksSavedTabView(),
    ),
    TabModel(
      tab: const Tab(
        text: "Highlights",
      ),
      widget: BookmarkHighlightView(),
    ),
    TabModel(
      tab: const Tab(
        text: "recently viewed",
      ),
      widget: RecentlyViewedArticlesTabView(),
    )
  ];

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }
}
