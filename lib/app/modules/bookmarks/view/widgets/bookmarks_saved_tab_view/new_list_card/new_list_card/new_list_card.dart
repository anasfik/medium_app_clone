import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/bookmarks/controllers/bookmarks_saved_tab_view_controller.dart';
import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';

import '../new_list_button/new_list_button.dart';
import 'new_list_title/new_list_title.dart';

class CreateNewListCard extends GetView<BookmarksSavedTabViewController> {
  const CreateNewListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const NewListTitle(),
              const SizedBox(
                height: 30,
              ),
              NewListButton(
                backgroundColor: Theme.of(context).colorScheme.primary,
                text: "start a list",
              ),
            ],
          ),
        ),
        const Positioned(
          child: Icon(
            Icons.close,
          ),
        )
      ],
    );
  }
}
