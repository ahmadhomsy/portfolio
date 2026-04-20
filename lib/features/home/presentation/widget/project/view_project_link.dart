import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';

class ViewProjectLink extends StatelessWidget {
  const ViewProjectLink(
      {required this.projectId, required this.isHovered, super.key});
  final bool isHovered;
  final String projectId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(
          'project_details',
          pathParameters: {'id': projectId},
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectionContainer.disabled(
            child: Text(
              'View Project',
              style: AppTextStyles.poppins12vividIndigoRegularly,
            ),
          ),
          AnimatedContainer(
            duration: ProjectSectionData.animationDuration,
            curve: Curves.easeInOut,
            width: isHovered ? 10 : 6,
          ),
          AnimatedSlide(
            duration: ProjectSectionData.animationDuration,
            curve: Curves.easeInOut,
            offset: isHovered ? const Offset(0.2, 0) : Offset.zero,
            child: const Icon(
              Icons.arrow_forward_rounded,
              size: 18,
              color: AppColors.vividIndigo,
            ),
          ),
        ],
      ),
    );
  }
}
