import 'package:get/get.dart';

class ScreensViewerController extends GetxController {
  // default opened screen index
  int currentScreenIndex = 0;

  // this is important to check before update if the index of current screen is different than the clicked navigation item, so unnecessary clicks doesn't result a build
  int _previousIndex = 0;

  // build id
  String indexedStackId = "indexedStackId";

  // this where we will set a condition to build
  bool _hasUserClickerOnDifferentNavigationItem = false;

  //
  void switchCurrentScreenIndexTo(int index) {
    // switch to clicked index screen
    currentScreenIndex = index;
    // get if user clicked on same navigation item
    _hasUserClickerOnDifferentNavigationItem =
        _previousIndex != currentScreenIndex;

    // update based on this check (if user clicked on home icon, and he is already on home screen, it should not build)
    update(
      [indexedStackId],
      _hasUserClickerOnDifferentNavigationItem,
    );

    // ! prove it, okay :
    _hasUserClickerOnDifferentNavigationItem
        ? print("rebuild")
        : print("no rebuild");

    // then store the _previous for next use
    _previousIndex = index;
  }
}
