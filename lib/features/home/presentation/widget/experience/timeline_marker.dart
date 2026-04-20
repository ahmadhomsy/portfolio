import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';

class TimelineMarker extends StatelessWidget {
  const TimelineMarker({required this.isMobile, super.key});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMobile ? 40 : 60,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 1.5,
            color: AppColors.mutedIndigo.withValues(alpha: 0.5),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.deepestNavy,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.vividIndigo,
                width: 1.5,
              ),
            ),
            child: const Icon(
              LucideIcons.briefcase,
              color: AppColors.vividIndigo,
              size: 16,
            ),
          ),
        ],
      ),
    )
        .animate()
        .scale(delay: 200.ms, duration: 400.ms, curve: Curves.easeOutBack);
  }
}
