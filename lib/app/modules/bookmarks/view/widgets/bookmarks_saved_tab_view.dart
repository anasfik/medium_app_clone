import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/bookmarks_saved_tab_view_controller.dart';
import 'bookmarks_saved_tab_view/bookmarks_saved_tab_view.dart';

class BookmarksSavedTabView extends GetView<BookmarksSavedTabViewController> {
  const BookmarksSavedTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CreateNewListWidget(),
        ],
      ),
    );
  }
}
