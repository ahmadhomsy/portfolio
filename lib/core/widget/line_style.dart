import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';

class LineStyle extends StatelessWidget {
  const LineStyle({required this.height, required this.width, super.key});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.turquoise,
        borderRadius: BorderRadius.circular(2),
      ),
    ).animate().scaleX(
          duration: 600.ms,
          curve: Curves.easeOutQuart,
          alignment: Alignment.center,
        );
  }
}
