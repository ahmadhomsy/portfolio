import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/enums/project_status.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/pulse_dot.dart';

class StatusBadge extends StatelessWidget {
  const StatusBadge({required this.status, super.key});

  final ProjectStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: status.color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: status.color),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PulseDot(color: status.color),
          8.horizontalSpace,
          Text(
            status.label,
            style: AppTextStyles.poppins12bold600.copyWith(
              color: status.color,
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(delay: 100.ms, duration: 400.ms)
        .slideX(begin: 0.1, end: 0);
  }
}
