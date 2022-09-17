import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home_view/controllers/home_controller.dart';
import 'package:medium_app_clone/app/modules/home_view/views/home_view.dart';
import 'package:medium_app_clone/app/modules/screens_viewer/view/widgets/medium_bottom_navigation.dart';

import '../../search_view/view/search_view.dart';
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
          bottomNavigationBar: const MediumBottomNavigation(),
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
