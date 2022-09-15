import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../HELPERS/text_methods.dart';

class AuthorInformation extends StatelessWidget {
  const AuthorInformation({
    Key? key,
    required this.author,
    required this.profile,
  }) : super(key: key);

  final String author;
  final String profile;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 8.5,
          backgroundImage: NetworkImage(
            profile,
          ),
        ),
        const SizedBox(width: 7.5),
        AutoSizeText(
          TextMethods.firstLettersToCapital(
            author,
          ),
          maxLines: 1,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
                color: Theme.of(context).colorScheme.primary.withOpacity(.8),
              ),
        ),
      ],
    );
  }
}
