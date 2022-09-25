import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/bookmarks_hightlights_tab_view/sub_widgets/no_highlight_description.dart';

import 'sub_widgets/MMMM.dart';

class BookmarkHighlightView extends StatelessWidget {
  const BookmarkHighlightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          IdkWhatThisCalledAndIDontKnowIfIShouldMakeItProgramaticallyOrNot(),
          NoHighlightDescription(),
        ],
      ),
    );
  }
}
