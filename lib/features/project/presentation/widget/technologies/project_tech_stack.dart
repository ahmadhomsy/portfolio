import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/section_title.dart';

class ProjectTechStack extends StatelessWidget {
  const ProjectTechStack({required this.techStack, super.key});

  final List<String> techStack;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Technologies Used'),
        const SizedBox(height: 25),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: techStack.map((tech) => _TechBadge(tech: tech)).toList(),
        ),
      ],
    ).animate().fadeIn(delay: 500.ms, duration: 600.ms);
  }
}

class _TechBadge extends StatelessWidget {
  const _TechBadge({required this.tech});

  final String tech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.turquoise.withOpacity(0.1),
            AppColors.turquoise.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.turquoise.withOpacity(0.3)),
      ),
      child: Text(
        tech,
        style: GoogleFonts.firaCode(
          fontSize: 14,
          color: AppColors.turquoise,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
