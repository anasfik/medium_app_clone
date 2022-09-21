import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/constants.dart';

class NewListCardBookmarkCircularButton extends StatelessWidget {
  const NewListCardBookmarkCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: newListCardBookmarkOverlayBoxSize,
      width: newListCardBookmarkOverlayBoxSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).primaryColor.withOpacity(newListCardBookmarkOverlayBoxOpacity),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: newListCardBookmarkButtonSize,
            maxWidth: newListCardBookmarkButtonSize,
            minWidth: newListCardBookmarkButtonSize,
            minHeight: newListCardBookmarkButtonSize,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor,
            ),
            child: Icon(
              Icons.bookmark_add_outlined,
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
      ),
    );
  }
}
