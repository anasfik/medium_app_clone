import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

class HighlightSectionSubTitle extends StatelessWidget {
  const HighlightSectionSubTitle({
    super.key,
    this.subTitle = "highlights from all corners of medium",
  });

  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      subTitle.firstLettersToCapital(),
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).primaryColor.withOpacity(.4),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
    );
  }
}
