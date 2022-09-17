import 'dart:math';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/data/medium_trends_model.dart';

class TrendsController extends GetxController {
  List<TrendArticle> trendsArticles = [
    ...List.generate(
      10,
      (index) => TrendArticle(
        author: "anas fikhi",
        community: "flutter",
        title: " I don't know man just a trend title example",
        authorProfileImage: "https://picsum.photos/200/300?random=${index * 2}",
        dateOfPublish: DateTime.now().subtract(
          Duration(
            minutes: Random().nextInt(60),
          ),
        ),
        dateOfLastRead: DateTime.now().subtract(
          Duration(
            minutes: 20 - Random().nextInt(20),
          ),
        ),
      ),
    ),
  ];
}
