import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/constants.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';

import '../controllers/home_controller.dart';
import 'widgets/medium_article_cards_list.dart';
import 'widgets/medium_home_header.dart';
import 'widgets/medium_tabs_views.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SizedBox(
          width: 50,
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
        ),
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
                        const SliverToBoxAdapter(
                          child: MediumHomeHeader(),
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              // to take place of the tabBAR when it is hidden so it work smoothly on scroll
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
