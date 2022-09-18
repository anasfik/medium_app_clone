import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/search_view/controllers/highlights_controller.dart';
import 'package:medium_app_clone/app/modules/search_view/view/widgets/medium_highlights/sub_widgets/highlight_card.dart';

import '../../../../../../config/constants.dart';

class HighlightsScrollView extends GetView<HighlightsController> {
  HighlightsScrollView({super.key});

  final HighlightsController highlightsController =
      Get.put(HighlightsController());
  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      color: Theme.of(context).primaryColor,
      axisDirection: AxisDirection.right,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: searchMainMargin),
          child: Row(
            children: <Widget>[
              ...List.generate(
                controller.highlights.length,
                (index) => HighlightCard(
                  highlight: controller.highlights[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
