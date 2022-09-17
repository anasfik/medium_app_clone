import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/data/medium_article_card_execute_icon_model.dart';

class ArticleCardsExecuteIconController extends GetxController {
  // article card possible icon
  List<ArticleCardsExecuteIcon> icons = [
    ArticleCardsExecuteIcon(
      executeIcons: ExecuteIcons.addBookmarks,
      icon: Icons.bookmark_add_outlined,
      onTap: () {},
    ),
    ArticleCardsExecuteIcon(
      executeIcons: ExecuteIcons.moreOptions,
      icon: Icons.more_vert_outlined,
      onTap: () {},
    ),
    ArticleCardsExecuteIcon(
      executeIcons: ExecuteIcons.showLessLikeThis,
      icon: Icons.remove_circle_outline,
      onTap: () {},
    ),
  ];
}
