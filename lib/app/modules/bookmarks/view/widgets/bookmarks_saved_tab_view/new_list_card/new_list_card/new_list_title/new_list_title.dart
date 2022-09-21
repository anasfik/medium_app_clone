import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/string_extension/string_extension.dart';

import '../../../../../../../../config/themes/colors/colors.dart';

class NewListTitle extends StatelessWidget {
  const NewListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: MediumColors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                shadows: <Shadow>[
                  Shadow(
                    color: MediumColors.white,
                    offset: const Offset(0.2, 0.2),
                    blurRadius: 0,
                  ),
                  Shadow(
                    color: MediumColors.white,
                    offset: const Offset(-0.2, -0.2),
                    blurRadius: 0,
                  )
                ],
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'create a new list to easily'.firstLettersToCapital(),
                ),
                const TextSpan(text: "\n"),
                TextSpan(
                  text: 'curate and share'.firstLettersToCapital(),
                ),
              ],
            ),
          );
  }
}