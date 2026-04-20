import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/helpers/launcher_service.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/url_data.dart';

class DownloadResume extends StatelessWidget {
  const DownloadResume({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => LauncherService.openUrl(UrlData.urlForDownloadResume),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.turquoise, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: SelectionContainer.disabled(
            child: Text(
              'Resume',
              style: AppTextStyles.poppins14turquoiseBold500,
            ),
          ),
        ).animate().fadeIn(delay: 100.ms).scale(),
      ),
    );
  }
}
