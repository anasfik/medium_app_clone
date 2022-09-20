import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/bookmarks_tabs_view_controller.dart';

class MediumBookmarksTabsView extends GetView<BookmarksTabsViewController> {
  const MediumBookmarksTabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.tabController,
      children: <Widget>[
        ...controller.tabs.map(
          (tab) => tab.widget,
        ),
      ],
    );
  }
}
