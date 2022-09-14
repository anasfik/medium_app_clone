import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/constants.dart';
enum ChildStatus {
  isChildOfStackParent,
  isChildOfListViewParent,
}
class HomeController extends GetxController {
  @override
  void onInit() {
    homeScrollController.addListener(() {
      // bool
      bool isScrollPositionReachedTabBar =
          homeScrollController.position.pixels >= headerHeight;

      // Check if we get to the tab bar
      if (isScrollPositionReachedTabBar) {
        // Toggle tab bar fixed value
        isTabBarFixed = isScrollPositionReachedTabBar;
        update(
          ["Medium Tab Bar"],
          isScrollPositionReachedTabBar,
        );
        return;
      }

      // Toggle tab bar fixed value when we scroll back to the top
      isTabBarFixed = isScrollPositionReachedTabBar;
      update(
        ["Medium Tab Bar"],
        !isScrollPositionReachedTabBar,
      );
    });
    super.onInit();
  }

  // scroll controller
  late ScrollController homeScrollController =
      ScrollController(initialScrollOffset: 0.0);

  // boolean responsible to fix the tab bar
  bool isTabBarFixed = false;




List getWidgetListBasedOnFixedStatus(dynamic WidgetClass) {
  return  (WidgetClass.childStatus == ChildStatus.isChildOfListViewParent)
        ? !isTabBarFixed
            ? [WidgetClass]
            : []
        : isTabBarFixed
            ? [WidgetClass]
            : [];
}
}
