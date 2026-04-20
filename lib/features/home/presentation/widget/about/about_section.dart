import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/about/about_content.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/about/about_image.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      child: Column(
        children: [
          const HeaderSection(title: 'About Me')
              .animate()
              .fadeIn(duration: 500.ms)
              .slideY(begin: 0.5, end: 0, duration: 500.ms),
          10.verticalSpace,
          const LineStyle(
            width: 60,
            height: 4,
          )
              .animate()
              .scaleX(begin: 0, end: 1, duration: 500.ms, delay: 200.ms)
              .fadeIn(duration: 500.ms, delay: 200.ms),
          50.verticalSpace,
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 768) {
                return Column(
                  children: [
                    const AboutImage()
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 300.ms)
                        .scale(begin: const Offset(0.8, 0.8)),
                    40.verticalSpace,
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: AboutContent(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textAlign: TextAlign.center,
                      ),
                    )
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 500.ms)
                        .slideY(begin: 0.2, end: 0),
                  ],
                );
              }
              return Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: const AboutImage()
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 300.ms)
                        .slideX(begin: -0.2, end: 0),
                  ),
                  50.horizontalSpace,
                  Expanded(
                    flex: 4,
                    child: const AboutContent(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textAlign: TextAlign.start,
                    )
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 500.ms)
                        .slideX(begin: 0.2, end: 0),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
