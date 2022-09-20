import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/constants.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_floating_action_button.dart';

import '../controllers/home_controller.dart';
import 'widgets/medium_home_header.dart';
import 'widgets/medium_tabs_views.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      edgeOffset: homeTabBarHeight + homeHeaderHeight,
      notificationPredicate: (notification) {
        return notification.depth == 2;
      },
      onRefresh: () async {
        // example
        await Future.delayed(
          const Duration(seconds: 2),
        );
      },
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: const MediumFAB(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: GetBuilder<HomeController>(
            id: controller.tabBarId,
            builder: (controller) {
              return Stack(
                children: [
                  NestedScrollView(
                    key: const ValueKey("nestedScrollView"),
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    floatHeaderSlivers: false,
                    controller: controller.homeScrollController,
                    headerSliverBuilder: ((context, innerBoxIsScrolled) =>
                        <Widget>[
                          SliverToBoxAdapter(
                            child: GestureDetector(
                                onTap: () {}, child: const MediumHomeHeader()),
                          ),
                          SliverToBoxAdapter(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                // to take place of the tabBar when it is hidden so it work smoothly on scroll
                                ...controller.isTabBarFixed
                                    ? [const SizedBox(height: homeTabBarHeight)]
                                    : [],
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
      ),
    );
  }
}
