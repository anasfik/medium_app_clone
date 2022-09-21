import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

import '../../../../../../../../../config/constants.dart';
import '../../../../../../../../../config/themes/colors/colors.dart';

class CreatedListCardTitle extends StatelessWidget {
  const CreatedListCardTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: newListCardHorizontalPadding),
      child: Text(
        title.firstLettersToCapital(),
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
          color: MediumColors.darkBlack,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          shadows: <Shadow>[
            Shadow(
              color: MediumColors.darkBlack,
              offset: const Offset(0.2, 0.2),
              blurRadius: 0,
            ),
            Shadow(
              color: MediumColors.darkBlack,
              offset: const Offset(-0.2, -0.2),
              blurRadius: 0,
            )
          ],
        ),
      ),
    );
  }
}
