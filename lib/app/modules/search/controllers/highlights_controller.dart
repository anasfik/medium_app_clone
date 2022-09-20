import 'dart:math';

import 'package:get/get.dart';
import 'package:medium_app_clone/app/models/medium_highlight.dart';

class HighlightsController extends GetxController {
  List<Highlight> highlights = [
    ...List.generate(
      5,
      (index) => Highlight(
        image: "https://picsum.photos/200/300?random=${index * 2}",
        cornerName: "uX Collective",
        title:
            "is the iPhone 14's new Dynamic island plain stupid or the next revolutionary Ultra ",
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
