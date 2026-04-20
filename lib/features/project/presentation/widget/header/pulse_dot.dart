import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PulseDot extends StatelessWidget {
  const PulseDot({required this.color, super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    )
        .animate(onPlay: (c) => c.repeat())
        .scaleXY(
          begin: 1,
          end: 1.4,
          duration: 900.ms,
          curve: Curves.easeInOut,
        )
        .then()
        .scaleXY(begin: 1.4, end: 1, duration: 900.ms);
  }
}
