import 'package:flutter/material.dart';

import '../../constants.dart';

class MediumHomeHeader extends StatelessWidget {
  MediumHomeHeader({
    Key? key,
    this.title = "home",
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.green,
      child: Row(
        children: <Widget>[
          Text(title),
        ],
      ),
    );
  }
}
