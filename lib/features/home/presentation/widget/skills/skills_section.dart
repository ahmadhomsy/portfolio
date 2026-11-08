import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/data/skills_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/skills/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = Responsive.isMobile(screenWidth);
    return Section(
      child: Column(
        children: [
          HeaderSection(
            title: isMobile ? 'Skills\nTechnologies' : 'Skills & Technologies',
          ),
          10.verticalSpace,
          const LineStyle(width: 60, height: 4),
          50.verticalSpace,
          Padding(
            padding: EdgeInsets.all(isMobile ? 2 : 16),
            child: Responsive.isDesktop(screenWidth)
                ? const _DesktopLayout()
                : const _MobileLayout(),
          ),
        ],
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: SkillCard(
            title: 'Technical Skills',
            icon: Icons.code,
            skills: SkillsSectionData.technicalSkills,
          ),
        ),
        20.horizontalSpace,
        const Expanded(
          child: SkillCard(
            title: 'Soft Skills',
            icon: Icons.people,
            skills: SkillsSectionData.softSkills,
          ),
        ),
      ],
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SkillCard(
          title: 'Technical Skills',
          icon: Icons.code,
          skills: SkillsSectionData.technicalSkills,
        ),
        20.verticalSpace,
        const SkillCard(
          title: 'Soft Skills',
          icon: Icons.people,
          skills: SkillsSectionData.softSkills,
        ),
      ],
    );
  }
}
