import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/text_methods.dart';
import 'package:medium_app_clone/app/modules/HELPERS/widgets/nil.dart';

import '../../constants.dart';

class MediumHomeHeader extends StatelessWidget {
  const MediumHomeHeader({
    Key? key,
    this.title = "home",
  }) : super(key: key);

  final String title;
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
                const Icon(
                  Icons.notifications_outlined,
                  size: homeHeaderNotificationIconSize,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
