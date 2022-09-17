import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/screens_viewer/controllers/screens_viewer_controller.dart';

import '../../../../config/constants.dart';

class MediumBottomNavigation extends GetView<ScreensViewerController> {
  const MediumBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: bottomNavigationBarShadowBlurRadius,
            color: Theme.of(context).colorScheme.primary.withOpacity(.1),
            offset: const Offset(0, -1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        onTap: (index) {
          controller.switchCurrentScreenIndexTo(
            index,
          );
        },
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        currentIndex: controller.currentScreenIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks),
            label: "bookmarks",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/56459378?v=4"),
            ),
            label: "home",
          ),
        ],
      ),
    );
  }
}
