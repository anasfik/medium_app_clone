import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class MediumDivider extends StatelessWidget {
  const MediumDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
          color: Theme.of(context).dividerColor.withOpacity(
                homeTabBarViewArticleDividerOpacity,
              ),
          thickness: homeTabBarViewArticleDividerThickness,
        );
  }
}