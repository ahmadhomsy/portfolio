import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/about_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/about/tech_chip.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({
    required this.textAlign,
    required this.crossAxisAlignment,
    super.key,
  });
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          'Who am I?',
          style: AppTextStyles.poppins20turquoiseBold600,
          textAlign: textAlign,
        ),
        20.verticalSpace,
        Text(
          AboutSectionData.aboutDescription1,
          style: AppTextStyles.poppins16grey400regularly,
          textAlign: textAlign,
        ),
        20.verticalSpace,
        Text(
          AboutSectionData.aboutDescription2,
          style: AppTextStyles.poppins16grey400regularly,
          textAlign: textAlign,
        ),
        30.verticalSpace,
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 15,
          runSpacing: 10,
          children: AboutSectionData.technologiesAbout
              .map((tech) => TechChip(text: tech))
              .toList(),
        ),
      ],
    );
  }
}
