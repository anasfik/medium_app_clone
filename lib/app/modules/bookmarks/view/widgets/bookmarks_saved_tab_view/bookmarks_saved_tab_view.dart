import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/bookmarks_saved_tab_view_controller.dart';
import 'new_list_card/new_list_card/new_list_card.dart';

class BookmarksSavedTabView extends GetView<BookmarksSavedTabViewController> {
  const BookmarksSavedTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            CreateNewListCard(),
          ],
        ),
      ),
    );
  }
}
