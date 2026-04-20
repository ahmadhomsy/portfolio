import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/widget/fading_divider.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/description/project_description.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/project_header.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/project_header_nav.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/key_features/project_features.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/links/link_section.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/gallery/image_gallery.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/technologies/project_tech_stack.dart';

class ProjectDesktopLayout extends StatelessWidget {
  const ProjectDesktopLayout({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProjectHeaderNav(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            children: [
              ProjectHeader(project: project),
              20.verticalSpace,
              _DesktopContentRow(project: project),
              20.verticalSpace,
              // ProjectFeatures(features: project.features),
              const ProjectFeatures(),
              20.verticalSpace,
              ProjectTechStack(techStack: project.techStack),
              20.verticalSpace,
              const LinkSection(),
              const SizedBox(height: 40),
              const FadingDivider(),
              const SizedBox(height: 25),
              ImageGallery(images: project.images),
            ],
          ),
        ),
      ],
    );
  }
}

class _DesktopContentRow extends StatelessWidget {
  const _DesktopContentRow({required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: ProjectDescription(project: project),
        ),
        const SizedBox(width: 50),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
