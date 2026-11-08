import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/education_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/education/badge.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({required this.educationItem, super.key});
  final EducationItem educationItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 380),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.darkSlate,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.05),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.charcoalBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              educationItem.icon,
              color: AppColors.turquoise,
              size: 24,
            ),
          ),
          20.verticalSpace,
          Text(
            educationItem.title,
            style: AppTextStyles.poppins18whiteBold,
          ),
          12.verticalSpace,
          Text(
            educationItem.institution,
            style: AppTextStyles.poppins14whiteBold500,
          ),
          6.verticalSpace,
          Text(
            educationItem.description,
            style: AppTextStyles.poppins13whiteItalic,
          ),
          24.verticalSpace,
          Wrap(
            runSpacing: 8,
            children: [
              BadgeWidget(
                text: educationItem.badge1Text,
                textColor: AppColors.mintGreen,
                bgColor: AppColors.deepTeal,
              ),
              12.horizontalSpace,
              BadgeWidget(
                text: educationItem.badge2Text,
                textColor: AppColors.periwinkle,
                bgColor: AppColors.deepIndigo,
              ),
            ],
          ),
        ],
      ),
    )
        .animate()
        .fade(duration: 600.ms, curve: Curves.easeOut)
        .slideY(begin: 0.1, duration: 600.ms, curve: Curves.easeOutQuart);
  }
}
