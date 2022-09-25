import 'package:flutter/material.dart';

class IdkWhatThisCalledAndIDontKnowIfIShouldMakeItProgramaticallyOrNot
    extends StatelessWidget {
  const IdkWhatThisCalledAndIDontKnowIfIShouldMakeItProgramaticallyOrNot(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Placeholder(
        fallbackHeight: 200,
        fallbackWidth: 200,
        child: AspectRatio(
          aspectRatio: 1,
        ),
      ),
    );
  }
}
