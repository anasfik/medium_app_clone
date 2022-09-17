import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../../../data/medium_highlight.dart';
import '../../../controllers/highlights_controller.dart';
import 'sub_widgets/highlight_scroll_view.dart';
import 'sub_widgets/highlight_section_sub_title.dart';
import 'sub_widgets/highlight_section_title.dart';

class HightlightsOnMedium extends GetView<HighlightsController> {
  HightlightsOnMedium({
    super.key,
  });

  final HighlightsController highlightsController =
      Get.put(HighlightsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          HighlightSectionTitle(),
          const HighlightSectionSubTitle(),
        HighlightsScrollView(),
        ],
      ),
    );
  }
}
