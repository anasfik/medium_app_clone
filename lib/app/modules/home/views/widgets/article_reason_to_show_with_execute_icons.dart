import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';

class ArticleReasonToShowWithExecuteIcons
    extends GetWidget<AtricleCardsController> {
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
        Text(
          _reasonToShowText,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 15,
              ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_outlined,
              ),
            ),
          ],
        )
      ],
    );
  }
}
