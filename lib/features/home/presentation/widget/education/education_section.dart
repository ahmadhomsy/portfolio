import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/data/education_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/education/education_card.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      child: Column(
        children: [
          const HeaderSection(title: 'Education'),
          10.verticalSpace,
          const LineStyle(
            height: 4,
            width: 60,
          ),
          40.verticalSpace,
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: EducationSectionData.itemsEducation.map((item) {
              return EducationCard(
                educationItem: item,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
