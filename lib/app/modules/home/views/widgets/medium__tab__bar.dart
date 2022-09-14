import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/data/tab_model.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';

import '../../constants.dart';
import '../../controllers/tab_bar_controller.dart';

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
    return TabBar(
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
    );
  }
}
