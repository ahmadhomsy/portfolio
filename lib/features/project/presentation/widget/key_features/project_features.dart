import 'package:flutter/material.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/key_features/feature_item.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/section_title.dart';

class ProjectFeatures extends StatelessWidget {
  const ProjectFeatures({super.key});

  final List<String> _features = const [
    'Secure administrator authentication and dynamic dashboard overview',
    'Product catalog management supporting distinct international pricing and local shipping rules',
    'Comprehensive order tracking system with detailed automated receipt generation',
    'Media episode administration enabling seamless file and image uploaded resources',
    'Detailed user management including tracked activity histories and system statistics',
    'Hierarchical application category creation and organizational management',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: 'Key Features'),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var crossAxisCount = 1;
              if (constraints.maxWidth > 900) {
                crossAxisCount = 3;
              } else if (constraints.maxWidth > 600) {
                crossAxisCount = 2;
              }

              const double spacing = 40.0;
              final itemWidth =
                  (constraints.maxWidth - (spacing * (crossAxisCount - 1))) /
                      crossAxisCount;

              return Wrap(
                spacing: spacing,
                runSpacing: 30.0,
                children: _features.map((text) {
                  return SizedBox(
                    width: itemWidth,
                    child: FeatureItem(text: text),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ],
    );
  }
}
