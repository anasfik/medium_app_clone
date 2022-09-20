import 'package:flutter/material.dart';

class OrderTrendNumber extends StatelessWidget {
  const OrderTrendNumber({super.key, required this.number});

  final int number;
  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString().padLeft(2, "0"),
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: Theme.of(context).colorScheme.primary.withOpacity(.05),
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          Shadow(
            offset: const Offset(1, 1),
            blurRadius: 1.0,
            color: Theme.of(context).colorScheme.primary.withOpacity(.05),
          ),
          Shadow(
            offset: const Offset(-1, -1),
            blurRadius: 1.0,
            color: Theme.of(context).colorScheme.primary.withOpacity(.05),
          ),
        ],
      ),
    );
  }
}
