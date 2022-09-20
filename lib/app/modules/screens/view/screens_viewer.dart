import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';
import 'package:medium_app_clone/app/modules/home/views/home_view.dart';
import 'package:medium_app_clone/app/modules/screens/view/widgets/medium_bottom_navigation.dart';

import '../../search/view/search_view.dart';
import '../controllers/screens_viewer_controller.dart';

class ScreensViewer extends GetView<HomeController> {
  const ScreensViewer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScreensViewerController>(
      init: ScreensViewerController(),
      id: Get.find<ScreensViewerController>().indexedStackId,
      builder: (screensViewerController) {
        return Scaffold(
          bottomNavigationBar: MediumBottomNavigation(
            selectedIndex: screensViewerController.currentScreenIndex,
          ),
          body: IndexedStack(
            index: screensViewerController.currentScreenIndex,
            children: <Widget>[
              const HomeView(),
              SearchView(),
              Center(
                child: const Text("aaaaaaaaaaaa"),
              ),
              Center(
                child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
              ),
            ],
          ),
        );
      },
    );
  }
}
