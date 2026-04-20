import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class LogoNavDesktop extends StatelessWidget {
  const LogoNavDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '<Ahmad/>',
      style: AppTextStyles.poppins24turquoiseBold,
    ).animate().fadeIn(duration: 200.ms).slideX();
  }
}
