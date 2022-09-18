import 'package:flutter/material.dart';

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
