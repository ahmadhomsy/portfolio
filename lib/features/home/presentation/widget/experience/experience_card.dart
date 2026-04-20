import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/experiences_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/bullet_point.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/experience_button.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/icon_with_text.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({required this.experience, super.key});
  final ExperienceModel experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.darkSlate,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.05),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                experience.title,
                style: AppTextStyles.poppins18vividIndigoBold,
              ),
              8.verticalSpace,
              Text(
                experience.company,
                style: AppTextStyles.poppins16whiteBold600,
              ),
              12.verticalSpace,
              Wrap(
                spacing: 16,
                runSpacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  IconWithText(
                    icon: Icons.location_on_outlined,
                    text: experience.location,
                  ),
                  IconWithText(
                    icon: Icons.calendar_today_outlined,
                    text: experience.date,
                  ),
                ],
              ),
              20.verticalSpace,
              for (final text in experience.responsibilities)
                BulletPoint(text: text),
              if (experience.projectName != null) ...[
                20.verticalSpace,
                ExperienceButton(
                  onTap: () {},
                  projectName: experience.projectName!,
                ),
              ],
            ],
          ),
        ),
      ),
    )
        .animate()
        .fade(duration: 500.ms)
        .slideX(begin: -0.2, curve: Curves.easeOutQuad);
  }
}
