import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';
import 'package:medium_app_clone/app/config/helpers/widgets/nil.dart';

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
            const NotExpensiveWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  TextMethods.firstLettersToCapital(
                    title,
                  ),
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
