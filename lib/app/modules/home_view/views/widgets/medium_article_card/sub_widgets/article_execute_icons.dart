import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../../../../data/medium_article_card_execute_icon_model.dart';
import '../../../../../../config/constants.dart';
import '../../../../controllers/article_cards_executeI_con_controller.dart';

class CardExecuteIcons extends GetWidget<ArticleCardsExecuteIconController> {
  const CardExecuteIcons({Key? key, required this.executeIcons})
      : super(key: key);

  final List<ExecuteIcons> executeIcons;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ...List.generate(executeIcons.length, (index) {
          ArticleCardsExecuteIcon convenientMapInList = controller.icons
              .firstWhere((optionIcon) =>
                  optionIcon.executeIcons == executeIcons[index]);
          return GestureDetector(
            onTap: () {
              convenientMapInList.onTap();
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: homeHeaderTabBarViewArticleExecuteIconsLeftMargin,
              ),
              child: Icon(
                convenientMapInList.icon,
                color: Theme.of(context).colorScheme.primary.withOpacity(
                      homeTabBarViewArticleIconsOpacity,
                    ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
