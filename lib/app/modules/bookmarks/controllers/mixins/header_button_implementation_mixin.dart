import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin HeaderButtonImplementationMixin on GetxController {
  final String idToUpdate = "headerButton";
  Color? dynamicHeaderButtonBgColor;

  void onTapDown(BuildContext context) {
    dynamicHeaderButtonBgColor = Theme.of(context).hoverColor;
    update([idToUpdate]);
  }

  void onTapCancel() {
    dynamicHeaderButtonBgColor = null;
    update([idToUpdate]);
  }
}
