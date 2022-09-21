import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/bookmarks_created_lists_controller.dart';
import 'sub_widgets/created_list_card/created_list_card.dart';

class ListsAlreadyMade extends GetView<BookmarksCreatedListsController> {
  ListsAlreadyMade({super.key});
final BookmarksCreatedListsController bookmarksCreatedListsController =
      Get.put(BookmarksCreatedListsController());
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...List.generate(
          controller.createdLists.length,
          (index) => CreatedListCard(
            createdBookmarkList: controller.createdLists[index],
          ),
        ),
      ],
    );
  }
}
