import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_app_clone/app/modules/home/controllers/article_cards_controller.dart';

class MediumSelectedArticles extends GetView<AtricleCardsController> {
  const MediumSelectedArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: controller.articles.length,
      itemBuilder: ((context, index) {
        return Container(
          height: 50,
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          color: Colors.red[Random().nextInt(9) * 100],
        );
      }),
    );
  }
}
