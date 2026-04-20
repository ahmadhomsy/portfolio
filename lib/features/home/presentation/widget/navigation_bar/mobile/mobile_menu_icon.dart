import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';

class MobileMenuIcon extends StatelessWidget {
  const MobileMenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      icon: const Icon(Icons.menu, color: AppColors.turquoise),
      onPressed: () {
        Scaffold.of(context).openEndDrawer();
      },
    ).animate().fadeIn(delay: 100.ms).scale();
  }
}
