import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/constants.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';

enum ChildStatus {
  isChildOfStackParent,
  isChildOfListViewParent,
}

class HomeController extends GetxController {
  @override
  void onInit() {
    homeScrollController.addListener(() {
      // return true when we pass header height
      _isScrollPositionReachedTabBar =
          homeScrollController.position.pixels >= homeHeaderHeight;

      // return true when we differ from the changing point (header height) by _rangePixelsNumberWhereItShouldRebuild
      _isScrollInRangeOfHeaderHeight =
          (homeScrollController.position.pixels - homeHeaderHeight).abs() <=
              _rangePixelsNumberWhereItShouldRebuild;

      if (_isScrollInRangeOfHeaderHeight) {
        // Check if we get to the tab bar
        if (_isScrollPositionReachedTabBar) {
          // Toggle tab bar fixed value
          isTabBarFixed = _isScrollPositionReachedTabBar;
          update(
            [tabBarId],
            _isScrollPositionReachedTabBar,
          );
          return;
        }

        // Toggle tab bar fixed value when we scroll back to the top
        isTabBarFixed = _isScrollPositionReachedTabBar;
        update(
          [tabBarId],
          !_isScrollPositionReachedTabBar,
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
  final double _scrollInitialPosition = 0;
  final double _rangePixelsNumberWhereItShouldRebuild = 50;
  //
  late ScrollController homeScrollController =
      ScrollController(initialScrollOffset: _scrollInitialPosition);
  //
  bool isTabBarFixed = false;
  bool _isScrollPositionReachedTabBar = false;
  bool _isScrollInRangeOfHeaderHeight = false;
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
