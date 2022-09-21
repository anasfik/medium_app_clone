import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';

mixin HeaderButtonImplementationMixin on GetxController {
  final String idToUpdate = "headerButton";
  Color? dynamicHeaderButtonBgColor;

  void onTapDown(BuildContext context, PanTheme onPanThemeType) {
    if (PanTheme.light == onPanThemeType) {
      dynamicHeaderButtonBgColor = Theme.of(context).hoverColor;
    }
    if (PanTheme.dark == onPanThemeType) {
      dynamicHeaderButtonBgColor =
          Theme.of(context).colorScheme.primary.withOpacity(.6);
    }
    update();
  }

  void onTapCancel() {
    dynamicHeaderButtonBgColor = null;
    update();
  }
}
