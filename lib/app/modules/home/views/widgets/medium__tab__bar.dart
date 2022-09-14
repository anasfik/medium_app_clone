import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';

import '../../constants.dart';

class MediumTabBar extends GetView<HomeController> {
  MediumTabBar({
    Key? key,
    required this.childStatus,
  }) : super(key: key);

  ChildStatus childStatus;
  late List asListOfWidget =
      controller.getWidgetListBasedOnFixedStatus(MediumTabBar(
    childStatus: childStatus,
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tabBarHeight,
      color: Colors.green,
    );
  }
}
