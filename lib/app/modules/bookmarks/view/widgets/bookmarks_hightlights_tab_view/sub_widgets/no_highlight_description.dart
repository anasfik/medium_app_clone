import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

class NoHighlightDescription extends StatelessWidget {
  const NoHighlightDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "when you find passages that resonate with you, you can highlight them to save them here"
          .firstLettersToCapital(),
    );
  }
}
