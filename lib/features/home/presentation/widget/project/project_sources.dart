import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/helpers/launcher_service.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/project_section_data.dart';

class ProjectSources extends StatelessWidget {
  const ProjectSources({required this.sources, super.key});
  final List<ProjectSource> sources;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: sources.map((source) {
          return InkWell(
            onTap: () async {
              await LauncherService.openUrl(source.url);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  source.icon,
                  size: 16,
                  color: Colors.white70,
                ),
                4.horizontalSpace,
                Text(
                  source.label,
                  style: AppTextStyles.poppins12grey400Regularly,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
