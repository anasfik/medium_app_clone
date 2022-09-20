import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/models/medium_tab_model.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_tabs_view_controller.dart';

import '../../../../config/constants.dart';

class MediumBookmarksTabBar extends GetView<BookmarksTabsViewController> {
  MediumBookmarksTabBar({
    Key? key,
  }) : super(key: key);

  final mediumTabBarTabController = Get.put(BookmarksTabsViewController());

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: IntrinsicHeight(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: homeTabBarIndicatorHeight,
              width: double.infinity,
              color: Theme.of(context).colorScheme.secondary.withOpacity(
                    homeTabBarNonSelectedTabsIndicatorOpacity,
                  ),
            ),
            TabBar(
              physics: const ClampingScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              isScrollable: true,
              controller: mediumTabBarTabController.tabController,
              tabs: mediumTabBarTabController.tabs
                  .map((tabModel) => TabModel.withCapitalizedLabel(tabModel))
                  .map(
                    (tabModel) => tabModel.tab,
                  )
                  .toList(),
              labelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
