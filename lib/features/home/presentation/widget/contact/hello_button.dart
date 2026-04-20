import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/helpers/launcher_service.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/core/theme/app_theme.dart';
import 'package:portfolio_flutter/features/home/data/contact_section_data.dart';

class HelloButton extends StatelessWidget {
  const HelloButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await LauncherService.openEmail(ContactSectionData.contactInfo);
      },
      style: AppTheme.helloButton,
      child: Text(
        'Say Hello',
        style: AppTextStyles.poppins16Bold600,
      ),
    ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.2, end: 0);
  }
}
