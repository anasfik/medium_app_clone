import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/bookmarks_header.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';

import 'controllers/bookmarks_view_controller.dart';
import 'view/widgets/medium_bookmarks_tabbar.dart';
import 'view/widgets/medium_bookmarks_tabbar_view.dart';

class BookmarksView extends GetView<BookmarksViewController> {
  BookmarksView({super.key});

  final bookmarksViewController = Get.put(BookmarksViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
                child: MediumBookmarksHeader(
              showButton: true,
              buttonWidget: MediumButton(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.primary,
                text: "new list",
                onPanThemeType: PanTheme.light,
              ),
            )),
            SliverToBoxAdapter(
              child: MediumBookmarksTabBar(),
            )
          ];
        },
        body: const MediumBookmarksTabsView(),
      )),
    );
  }
}
