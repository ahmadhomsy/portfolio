import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class ExperienceButton extends StatelessWidget {
  const ExperienceButton({
    required this.projectName,
    super.key,
    this.onTap,
  });

  final String projectName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.vividIndigo.withValues(alpha: 0.1),
        foregroundColor: AppColors.vividIndigo,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: AppColors.vividIndigo.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.web_asset_rounded,
            size: 16,
          ),
          8.horizontalSpace,
          Text(
            projectName,
            style: AppTextStyles.poppins13vividIndigoBold600,
          ),
          8.horizontalSpace,
          const Icon(
            Icons.arrow_forward_rounded,
            size: 14,
          ),
        ],
      ),
    );
  }
}
