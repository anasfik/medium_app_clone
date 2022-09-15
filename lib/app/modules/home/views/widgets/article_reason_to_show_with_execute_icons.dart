import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';

class ArticleReasonToShowWithExecuteIcons
    extends GetWidget<ArticleCardsController> {
  ArticleReasonToShowWithExecuteIcons({
    Key? key,
    required this.reasonToShow,
    required this.executeIcons,
  }) : super(
          key: key,
        );
  final ReasonToShow reasonToShow;
  final List<ExecuteIcons> executeIcons;
  late final String _reasonToShowText = controller.getReasonToShowText(
    reasonToShow: reasonToShow,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            child: Text(
              _reasonToShowText,
              maxLines: 1,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.5),
                  ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.bookmark_add_outlined,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.4),
                ),
                Icon(
                  Icons.remove_circle_outline_outlined,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.4),
                ),
                Icon(
                  Icons.more_vert,
                  color: Theme.of(context).colorScheme.primary.withOpacity(.4),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
