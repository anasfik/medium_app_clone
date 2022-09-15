import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/modules/HELPERS/text_methods.dart';

class ArticleMainInformation extends StatelessWidget {
  const ArticleMainInformation({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Text(
            TextMethods.firstLettersToCapital(
              title,
            ),
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: const Offset(0, 0),
                  blurRadius: 0.5,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
            image,
            height: 50,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
