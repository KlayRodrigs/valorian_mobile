import 'package:flutter/material.dart';

class GapComponent extends StatelessWidget {
  final double height;
  const GapComponent({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}