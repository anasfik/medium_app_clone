import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../config/themes/colors/colors.dart';
import '../../../../new_list_card/new_list_card/sub_widgets/new_list_title.dart';

class CreatedListCardTitle extends StatelessWidget {
  const CreatedListCardTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color: MediumColors.darkBlack,
        fontSize: 13,
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
    );
  }
}
