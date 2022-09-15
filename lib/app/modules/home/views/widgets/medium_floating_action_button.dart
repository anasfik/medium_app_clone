import 'package:flutter/material.dart';

import '../../constants.dart';

class MediumFAB extends StatelessWidget {
  const MediumFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: homeFabSize,
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
              size: homeFabIconSize,
            ),
            onPressed: () {},
          ),
        );
  }
}