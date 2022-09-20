import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/models/medium_tab_model.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';

import '../../../../config/constants.dart';
import '../../controllers/tab_bar_controller.dart';
import 'medium_tab_bar_corner_blur.dart';

class MediumTabBar extends GetView<HomeController> {
  MediumTabBar({
    Key? key,
    required this.childStatus,
  }) : super(key: key);

  final ChildStatus childStatus;
  final mediumHomeTabController = Get.find<MediumHomeTabController>();
  late List asListOfWidget =
      controller.getWidgetListBasedOnFixedStatus(MediumTabBar(
    childStatus: childStatus,
  ));

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
              controller: mediumHomeTabController.tabController,
              tabs: mediumHomeTabController.tabs
                  .map((tabModel) => TabModel.withCapitalizedLabel(tabModel))
                  .map(
                    (tabModel) => tabModel.tab,
                  )
                  .toList(),
              labelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const BlurBoxInCorner(
              blurSide: BlurSide.left,
            ),
            const BlurBoxInCorner(
              blurSide: BlurSide.right,
            ),
          ],
        ),
      ),
    );
  }
}
