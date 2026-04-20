import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.description,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.coolGrey,
            height: 1.8,
          ),
        ).animate().fadeIn(delay: 300.ms, duration: 600.ms),
        const SizedBox(height: 10),
        Text(
          project.longDescription,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.coolGrey,
            height: 1.8,
          ),
        ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
      ],
    );
  }
}
