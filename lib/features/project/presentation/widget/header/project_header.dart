import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/category_badge.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/status_badge.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CategoryBadge(category: project.category),
            const Spacer(),
            StatusBadge(status: project.status),
          ],
        ),
        20.verticalSpace,
        Text(
          project.title,
          style: AppTextStyles.poppins42textPrimaryBold,
        ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.1, end: 0),
      ],
    );
  }
}
