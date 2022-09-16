import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/constants.dart';
import 'package:medium_app_clone/app/modules/home/controllers/tab_bar_controller.dart';

import 'medium_article_cards_list.dart';

class MediumTabBarView extends GetView<MediumHomeTabController> {
  const MediumTabBarView({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        overscroll: showOverScrollGlow,
      ),
      child:
          TabBarView(controller: controller.tabController, children: <Widget>[
        ...List.generate(
          controller.tabs.length,
          (index) => MediumSelectedArticles(
            isForYouSection: index ==
                controller.tabs.indexWhere(
                  (tabModel) =>
                      tabModel.tab.text?.toLowerCase().contains("for you") ??
                      false,
                ),
          ),
        )
      ]),
    );
  }
}
