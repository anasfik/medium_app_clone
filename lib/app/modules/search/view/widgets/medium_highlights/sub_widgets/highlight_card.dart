import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/models/medium_highlight.dart';

import 'highlight_card_date_information.dart';
import 'highlight_card_title.dart';
import 'hightlight_card_corner_information.dart';

class HighlightCard extends StatelessWidget {
  const HighlightCard({
    super.key,
    required this.highlight,
  });

  final Highlight highlight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1.5),
              child: Image.network(
                highlight.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          HighlightCardCornerInformation(
            author: highlight.cornerName,
            profile: highlight.image,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          HighlightCardTitle(
            title: highlight.title,
            titleMaxLines: 3,
            textColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
