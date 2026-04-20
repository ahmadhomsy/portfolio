import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/description/project_description.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/description/project_info_card.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/gallery/image_gallery.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/project_header.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/header/project_header_nav.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/key_features/project_features.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/technologies/project_tech_stack.dart';

class ProjectMobileLayout extends StatelessWidget {
  const ProjectMobileLayout({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProjectHeaderNav(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ProjectHeader(project: project),
              30.verticalSpace,
              ProjectDescription(project: project),
              const SizedBox(height: 30),
              ProjectInfoCard(project: project),
              const SizedBox(height: 30),
              const ProjectFeatures(),
              // ProjectFeatures(features: project.features),
              const SizedBox(height: 30),
              ProjectTechStack(techStack: project.techStack),
              const SizedBox(height: 30),
              ImageGallery(images: project.images),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }
}
