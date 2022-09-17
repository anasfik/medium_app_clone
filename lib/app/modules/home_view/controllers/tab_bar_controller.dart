import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/data/medium_tab_model.dart';

class MediumHomeTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(
        length: tabs.length,
        vsync: this,
        initialIndex: tabs.indexWhere(
              (tabModel) => tabModel.tab.text == null,
            ) +
            1);
    super.onInit();
  }

  late List<TabModel> tabs = <TabModel>[
    TabModel(
      tab: Tab(
        icon: Icon(
          Icons.add,
          size: (const IconThemeData.fallback().size)! - 5,
        ),
      ),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "for you"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "following"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "javascript"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "marketing"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "android development"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "freelancing"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "software engineering"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "ios development"),
      widget: Container(),
    ),
    TabModel(
      tab: const Tab(text: "UX"),
      widget: Container(),
    ),
  ];
}
