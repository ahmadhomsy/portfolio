import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/core/widget/fading_divider.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/project_sources.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/view_project_link.dart';

class ProjectDetailsSection extends StatelessWidget {
  const ProjectDetailsSection({
    required this.project,
    required this.isHovered,
    super.key,
  });
  final ProjectModel project;
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedDefaultTextStyle(
            duration: ProjectSectionData.animationDuration,
            curve: Curves.easeOut,
            style: isHovered
                ? AppTextStyles.poppins16vividIndigo
                : AppTextStyles.poppins16White,
            child: Text(project.title),
          ),
          10.verticalSpace,
          Text(
            project.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.poppins12grey400Regularly,
          ),
          20.verticalSpace,
          const FadingDivider(),
          15.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProjectSources(sources: project.sources),
              ViewProjectLink(
                isHovered: isHovered,
                projectId: project.id,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
