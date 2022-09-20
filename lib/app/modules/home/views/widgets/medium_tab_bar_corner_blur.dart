import 'package:flutter/material.dart';

class BlurBoxInCorner extends StatelessWidget {
  const BlurBoxInCorner({Key? key, required this.blurSide})
      : super(
          key: key,
        );
  final BlurSide blurSide;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: blurSide == BlurSide.left
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        width: 20,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              if (blurSide == BlurSide.left) ...[
                Colors.white,
                Colors.white.withOpacity(.2),
              ],
              if (blurSide == BlurSide.right) ...[
                Colors.white.withOpacity(.2),
                Colors.white,
              ]
            ],
          ),
        ),
      ),
    );
  }
}

enum BlurSide {
  left,
  right,
}
