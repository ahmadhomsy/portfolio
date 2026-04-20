import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';

class ProjectImageWithOverlay extends StatelessWidget {
  const ProjectImageWithOverlay({
    required this.imagePath,
    required this.isHovered,
    required this.onTap,
    super.key,
  });

  final String imagePath;
  final bool isHovered;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            excludeFromSemantics: true,
          ),
        ),
        Positioned.fill(
          child: IgnorePointer(
            ignoring: !isHovered,
            child: AnimatedOpacity(
              duration: ProjectSectionData.animationDuration,
              opacity: isHovered ? 1.0 : 0.0,
              child: ColoredBox(
                color: Colors.black.withValues(alpha: 0.3),
                child: Center(
                  child: InkWell(
                    onTap: onTap,
                    child: _ViewProjectButton(
                      isHovered: isHovered,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ViewProjectButton extends StatelessWidget {
  const _ViewProjectButton({required this.isHovered});
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF6366F1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectionContainer.disabled(
            child: Text(
              'View Project',
              style: AppTextStyles.poppins14periwinkleBold,
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
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
