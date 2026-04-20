import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/hero_section_data.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({required this.mainAxisAlignment, super.key});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = Responsive.isDesktop(screenWidth);
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          'I am a ',
          style: AppTextStyles.poppins20coolGreyBold,
        ),
        AnimatedTextKit(
          repeatForever: true,
          pause: const Duration(milliseconds: 500),
          animatedTexts: HeroSectionData.titles
              .map(
                (title) => TypewriterAnimatedText(
                  title,
                  speed: const Duration(milliseconds: 80),
                  textStyle: isDesktop
                      ? AppTextStyles.poppins50cloudBlueBold
                      : AppTextStyles.poppins20cloudBlueBold,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
