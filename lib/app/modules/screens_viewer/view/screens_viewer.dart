import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/home_controller.dart';
import 'package:medium_app_clone/app/modules/home/views/home_view.dart';
import 'package:medium_app_clone/app/modules/screens_viewer/bindings/screens_viewer_binding.dart';
import 'package:medium_app_clone/app/modules/screens_viewer/view/widgets/medium_bottom_navigation.dart';

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
            children: const <Widget>[
              HomeView(),
              Center(
                child: Text("aaa"),
              ),
              Center(
                child: Text("aaaaaaaaaaaa"),
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
