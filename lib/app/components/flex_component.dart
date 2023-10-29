import 'package:flutter/material.dart';

class FlexComponent extends StatelessWidget {
  final int flex;
  const FlexComponent({super.key, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: const SizedBox());
  }
}