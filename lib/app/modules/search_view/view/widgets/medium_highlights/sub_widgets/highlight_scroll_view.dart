import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/search_view/controllers/highlights_controller.dart';
import 'package:medium_app_clone/app/modules/search_view/view/widgets/medium_highlights/sub_widgets/highlight_card.dart';

class HighlightsScrollView extends GetView<HighlightsController> {
  HighlightsScrollView({super.key});

  HighlightsController highlightsController = Get.put(HighlightsController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...List.generate(
            controller.highlighs.length,
            (index) => HighlightCard(
              highlight: controller.highlighs[index],
            ),
          ),
        ],
      ),
    );
  }
}
