import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/string_extension/string_methods.dart';

import '../../../../config/constants.dart';

class MediumHomeHeader extends StatelessWidget {
  const MediumHomeHeader({
    Key? key,
    this.title = "home",
    this.showIcon = true,
    this.icon = Icons.notifications_outlined,
  }) : super(key: key);

  final String title;
  final bool showIcon;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: homeHeaderPadding),
      child: Container(
        height: homeHeaderHeight,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // const NotExpensiveWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title.firstLettersToCapital(),
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: homeHeaderFontSize,
                      ),
                ),
                if (showIcon) ...[
                  Icon(
                    icon,
                    size: homeHeaderNotificationIconSize,
                  )
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
