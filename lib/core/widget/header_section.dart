import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.poppins32whiteBold,
    ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.2, end: 0);
  }
}
