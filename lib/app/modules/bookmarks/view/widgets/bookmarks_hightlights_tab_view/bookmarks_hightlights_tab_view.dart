import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/config/constants.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/bookmarks_hightlights_tab_view/sub_widgets/no_highlight_description.dart';

import '../../../controllers/bookmarks_highlight_tab_view_controller.dart';
import 'sub_widgets/MMMM.dart';

class BookmarkHighlightView extends GetView<HighlightTabViewController> {
  BookmarkHighlightView({super.key});

  @override
  HighlightTabViewController controller = Get.put(HighlightTabViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(searchMainMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            IdkWhatThisCalledAndIDontKnowIfIShouldMakeItProgramaticallyOrNot(),
            Center(child: NoHighlightDescription()),
          ],
        ),
      ),
    );
  }
}
