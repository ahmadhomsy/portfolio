import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/data/experiences_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/experience_timeline.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = Responsive.isMobile(screenWidth);

    return Section(
      child: Column(
        children: [
          const HeaderSection(
            title: 'Experience',
          ),
          10.verticalSpace,
          const LineStyle(width: 60, height: 4),
          50.verticalSpace,
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: isMobile ? 8 : 20,
                ),
                child: Column(
                  children: List.generate(
                    ExperiencesSectionData.experiences.length,
                    (index) {
                      final experience =
                          ExperiencesSectionData.experiences[index];
                      return ExperienceTimelineItem(
                        isLeftAligned: !isMobile && index.isEven,
                        experience: experience,
                        isMobile: isMobile,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
