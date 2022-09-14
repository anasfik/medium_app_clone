import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/constants.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';

import '../controllers/home_controller.dart';
import 'widgets/medium_article_cards_list.dart';
import 'widgets/medium_home_header.dart';
import 'widgets/medium_tabs_views.dart';

class HomeView222 extends GetView<HomeController> {
  const HomeView222({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: GetBuilder<HomeController>(
          id: controller.tabBarId,
          builder: (controller) {
            return Stack(
              children: [
                NestedScrollView(
                  controller: controller.homeScrollController,
                  headerSliverBuilder: ((context, innerBoxIsScrolled) =>
                      <Widget>[
                        const SliverToBoxAdapter(
                          child: MediumHomeHeader(),
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ...!controller.isTabBarFixed
                                  ? []
                                  : [const SizedBox(height: tabBarHeight)],
                              ...MediumTabBar(
                                key: const ValueKey(
                                    "this is the unfixed one ( default )"),
                                childStatus:
                                    ChildStatus.isChildOfListViewParent,
                              ).asListOfWidget
                            ],
                          ),
                        )
                      ]),
                  body: const MediumTabBarView(),
                ),
                ...MediumTabBar(
                  key: const ValueKey("this is the fixed one ( new build )"),
                  childStatus: ChildStatus.isChildOfStackParent,
                ).asListOfWidget,
              ],
            );
          },
        ),
      ),
    );
  }
}
