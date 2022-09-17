import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

class TrendingTitle extends StatelessWidget {
  const TrendingTitle({
    super.key,
    this.title = "trending on medium",
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          const TrendIcon(),
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

class TrendIcon extends StatelessWidget {
  const TrendIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          top: 1,
          right: 1,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 1.75,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Icon(
            Icons.trending_up,
            color: Theme.of(context).colorScheme.primary,
            size: 17.5,
          ),
        ));
  }
}
