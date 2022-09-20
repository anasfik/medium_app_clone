import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/HELPERS/text_methods.dart';

import '../../../../config/constants.dart';

class MediumSearchBar extends StatelessWidget {
  const MediumSearchBar({
    super.key,
    this.hint = "search medium",
    this.icon = Icons.search,
  });

  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: searchSearchBarHeight,
      margin: const EdgeInsets.symmetric(
        horizontal: searchMainMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(searchSearchBarBorderRAdiusValue),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextField(
        decoration: InputDecoration(
          hintText: TextMethods.firstLettersToCapital(hint),
          prefixIcon: Icon(
            icon,
            size: searchSearchBarIconSize,
          ),
          hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.w100,
            fontSize: searchSearchBarTextFontSize,
            shadows: <Shadow>[
              Shadow(
                offset: const Offset(0, 0),
                blurRadius: 0.2,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
