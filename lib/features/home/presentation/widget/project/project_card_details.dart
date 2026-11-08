import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/project_details_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/project_image_with_overlay.dart';

class ProjectCardDetails extends StatelessWidget {
  const ProjectCardDetails({
    required this.project,
    super.key,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HoverCubit(),
      child: BlocBuilder<HoverCubit, bool>(
        builder: (context, isHovered) {
          return MouseRegion(
            onEnter: (_) => context.read<HoverCubit>().hoverEnter(),
            onExit: (_) => context.read<HoverCubit>().hoverExit(),
            child: RepaintBoundary(
              child: AnimatedContainer(
                duration: ProjectSectionData.animationDuration,
                curve: Curves.easeOut,
                transformAlignment: Alignment.center,
                decoration: _buildCardDecoration(isHovered),
                transform: Matrix4.diagonal3Values(
                  isHovered ? 1.015 : 1.0,
                  isHovered ? 1.015 : 1.0,
                  1,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectImageWithOverlay(
                        onTap: () {
                          context.goNamed(
                            'project_details',
                            pathParameters: {'id': project.id},
                          );
                        },
                        imagePath: project.imagePath,
                        isHovered: isHovered,
                      ),
                      ProjectDetailsSection(
                        project: project,
                        isHovered: isHovered,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  BoxDecoration _buildCardDecoration(bool isHovered) {
    return BoxDecoration(
      color: AppColors.darkSlate,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: isHovered
            ? AppColors.vividIndigo.withValues(alpha: 0.1)
            : AppColors.pickledBlueWood,
      ),
      boxShadow: isHovered
          ? [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
              ),
            ]
          : const [],
    );
  }
}
