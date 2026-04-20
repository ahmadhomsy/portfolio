import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/skills/skill_list.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    required this.icon,
    required this.title,
    required this.skills,
    super.key,
  });
  final String title;
  final List<String> skills;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = Responsive.isMobile(screenWidth);
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 30, horizontal: isMobile ? 10 : 30),
      decoration: BoxDecoration(
        color: AppColors.darkSlate,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.pickledBlueWood,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.charcoalBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: AppColors.turquoise,
                  size: 18,
                ),
              ),
              8.horizontalSpace,
              Text(
                title,
                style: AppTextStyles.poppins18whiteBold,
              ),
            ],
          ),
          16.verticalSpace,
          SkillList(skills: skills),
        ],
      ),
    )
        .animate()
        .fade(duration: 600.ms, curve: Curves.easeOut)
        .slideY(begin: 0.1, duration: 600.ms, curve: Curves.easeOutQuart);
  }
}
