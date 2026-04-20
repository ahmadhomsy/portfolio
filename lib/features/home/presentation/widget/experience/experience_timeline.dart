import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/features/home/data/experiences_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/experience_card.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/timeline_marker.dart';

class ExperienceTimelineItem extends StatelessWidget {
  const ExperienceTimelineItem({
    required this.isLeftAligned,
    required this.experience,
    required this.isMobile,
    super.key,
  });

  final bool isLeftAligned;
  final ExperienceModel experience;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: isMobile ? Alignment.centerLeft : Alignment.center,
            child: TimelineMarker(isMobile: isMobile),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: isMobile ? 40 : 0,
            bottom: 30,
          ),
          child: isMobile
              ? ExperienceCard(experience: experience)
              : Row(
                  children: [
                    Expanded(
                      child: isLeftAligned
                          ? ExperienceCard(experience: experience)
                          : const SizedBox.shrink(),
                    ),
                    60.horizontalSpace,
                    Expanded(
                      child: !isLeftAligned
                          ? ExperienceCard(experience: experience)
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
