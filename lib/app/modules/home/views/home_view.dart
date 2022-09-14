import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/HELPERS/widgets/nil.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium__tab__bar.dart';

import '../constants.dart';
import '../controllers/home_controller.dart';
import 'widgets/medium_home_header.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<HomeController>(
          id: "Medium Tab Bar",
          builder: (controller) {
            return Stack(
              children: [
                ListView(
                  controller: controller.homeScrollController,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: [
                        MediumHomeHeader(),
                        !controller.isTabBarFixed
                            ? const MediumTabBar()
                            : const NotExpensiveWidget(),
                      ],
                    ),
                    Container(
                      height: 1200,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
                controller.isTabBarFixed
                    ? const MediumTabBar()
                    : const NotExpensiveWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
