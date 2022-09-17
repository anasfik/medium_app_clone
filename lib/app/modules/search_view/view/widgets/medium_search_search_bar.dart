import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/HELPERS/text_methods.dart';

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
      height: 40,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextField(
        decoration: InputDecoration(
          hintText: TextMethods.firstLettersToCapital(hint),
          prefixIcon: Icon(
            icon,
            size: 24,
          ),
          hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.w100,
            fontSize: 12,
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
