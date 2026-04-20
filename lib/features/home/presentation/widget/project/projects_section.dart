import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/project_card_details.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      child: Column(
        children: [
          const HeaderSection(title: 'My Projects'),
          10.verticalSpace,
          const LineStyle(height: 4, width: 60),
          60.verticalSpace,
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              for (final project in ProjectSectionData.projectsList)
                SizedBox(
                  width: 375,
                  child: ProjectCardDetails(project: project),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
