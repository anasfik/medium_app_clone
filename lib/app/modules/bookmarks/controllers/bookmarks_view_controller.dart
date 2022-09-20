import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BookmarksViewController extends GetxController
    with HeaderButtonImplementationMixin {}

mixin HeaderButtonImplementationMixin on GetxController {
  final String idToUpdate = "headerButton";
  Color? dynamicHeaderButtonBgColor;

  void onTapDown(BuildContext context) {
    dynamicHeaderButtonBgColor =
        Theme.of(context).colorScheme.primary.withGreen(80);
    update([idToUpdate]);
  }

  void onTapCancel() {
    dynamicHeaderButtonBgColor = null;
    update([idToUpdate]);
  }
}
