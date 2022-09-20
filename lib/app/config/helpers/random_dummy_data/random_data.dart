import 'dart:math';

import 'package:medium_app_clone/app/config/helpers/random_dummy_data/random_pieces/random_titles/random_titles.dart';

class RandomData with RandomTitles {
  String randomTitle() {
    return titles[Random().nextInt(titles.length)];
  }
}
