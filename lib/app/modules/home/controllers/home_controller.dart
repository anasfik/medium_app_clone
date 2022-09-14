import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/constants.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';

enum ChildStatus {
  isChildOfStackParent,
  isChildOfListViewParent,
}

class HomeController extends GetxController {
  @override
  void onInit() {
    homeScrollController.addListener(() {
      //
      isScrollPositionReachedTabBar =
          homeScrollController.position.pixels >= headerHeight;
      isScrollInRangeOfHeaderHeight =
          (homeScrollController.position.pixels - headerHeight).abs() <=
              rangePixelsNumberWhereItShouldRebuild;
      if (isScrollInRangeOfHeaderHeight) {
        // Check if we get to the tab bar
        if (isScrollPositionReachedTabBar) {
          // Toggle tab bar fixed value
          isTabBarFixed = isScrollPositionReachedTabBar;
          update(
            [tabBarId],
            isScrollPositionReachedTabBar,
          );
          return;
        }

        // Toggle tab bar fixed value when we scroll back to the top
        isTabBarFixed = isScrollPositionReachedTabBar;
        update(
          [tabBarId],
          !isScrollPositionReachedTabBar,
        );
      }
      print(
        'Scroll position: ${homeScrollController.position.pixels}',
      );
    });
    super.onInit();
  }

  // !  Variables
  //
  double scrollInitialPosition = 0;
  double rangePixelsNumberWhereItShouldRebuild = 50;
  //
  late ScrollController homeScrollController =
      ScrollController(initialScrollOffset: scrollInitialPosition);
  //
  bool isTabBarFixed = false;
  bool isScrollPositionReachedTabBar = false;
  bool isScrollInRangeOfHeaderHeight = false;
  //
  String tabBarId = "Medium Tab Bar";
  // Methods
  List getWidgetListBasedOnFixedStatus(MediumTabBar widgetClass) {
    return (widgetClass.childStatus == ChildStatus.isChildOfListViewParent)
        ? !isTabBarFixed
            ? [widgetClass]
            : []
        : isTabBarFixed
            ? [widgetClass]
            : [];
  }
}
