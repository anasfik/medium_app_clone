import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:medium_app_clone/app/config/constants.dart';

import '../../../../../models/medium_highlight.dart';
import '../../../controllers/highlights_controller.dart';
import 'sub_widgets/highlight_scroll_view.dart';
import 'sub_widgets/highlight_section_sub_title.dart';
import 'sub_widgets/highlight_section_title.dart';

class HighlightsOnMedium extends GetView<HighlightsController> {
  HighlightsOnMedium({
    super.key,
  });

  final HighlightsController highlightsController =
      Get.put(HighlightsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: searchMainMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: searchMainMargin),
              child: HighlightSectionTitle(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: searchMainMargin),
              child: HighlightSectionSubTitle(),
            ),
            const SizedBox(
              height: 15,
            ),
            HighlightsScrollView(),
          ],
        ),
      ),
    );
  }
}
