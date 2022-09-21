import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

import '../../../../config/constants.dart';

class MediumHomeHeader extends StatelessWidget {
  const MediumHomeHeader({
    Key? key,
    this.title = "home",
    this.showIcon = true,
    this.showButton = false,
    this.icon = Icons.notifications_outlined,
    this.buttonWidget,
  }) : super(key: key);

  final String title;
  final bool showIcon;
  final bool showButton;
  final IconData icon;
final Widget? buttonWidget;
  @override
  Widget build(BuildContext context) {
    assert(
        (showIcon == showButton ) || !(showButton && showIcon), "You can't show both icon and button, only one");
    assert((buttonWidget != null) == showButton,
        "to show a button you need to pass a widget to buttonWidget property");
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
                ] else if (showButton) ...[
                  buttonWidget ?? Container(),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
