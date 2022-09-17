import 'package:flutter/material.dart';


class ArticleCardsExecuteIcon {
ExecuteIcons executeIcons;
IconData icon;
void Function() onTap;

ArticleCardsExecuteIcon({
required this.executeIcons,
required this.icon,
required this.onTap,

});

}



enum ExecuteIcons { addBookmarks, showLessLikeThis, moreOptions }


