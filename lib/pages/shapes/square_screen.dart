import 'package:flutter/material.dart';

class SquarePaint extends StatelessWidget {
  const SquarePaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Square Painting'),
    );
  }
}
