import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/extensions/string_extension/string_extension.dart';

class HighlightSectionTitle extends StatelessWidget {
  HighlightSectionTitle({
    super.key,
    this.title = "what we're reading today",
  }) {
    firstTextLine = title.substring(
      0,
      title.lastIndexOf(" "),
    );
    lastTextLine = title.substring(
      title.lastIndexOf(" "),
      title.length,
    );
  }

  final String title;
  late String firstTextLine;
  late String lastTextLine;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 
              firstTextLine.firstLettersToCapital(),
            
          ),
          const TextSpan(
            text: "\n",
          ),
          TextSpan(
            text: 
              lastTextLine.firstLettersToCapital(),
            
          ),
        ],
      ),
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        shadows: <Shadow>[
          Shadow(
            blurRadius: 0.0,
            color: Theme.of(context).primaryColor,
            offset: const Offset(0.2, 0.2),
          ),
          Shadow(
            blurRadius: 0.0,
            color: Theme.of(context).primaryColor,
            offset: const Offset(-0.2, -0.2),
          ),
        ],
      ),
      maxLines: 2,
    );
  }
}
