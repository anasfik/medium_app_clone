import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

import 'trending_icon.dart';

class TrendingTitle extends StatelessWidget {
  const TrendingTitle({
    super.key,
    this.title = "trending on medium",
    this.iconWidget = const TrendIcon(),
  });

  final String title;
  final StatelessWidget iconWidget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          iconWidget,
          SizedBox(
            width: 10.0,
          ),
          Text(
            TextMethods.firstLettersToCapital(
              title,
            ),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}


