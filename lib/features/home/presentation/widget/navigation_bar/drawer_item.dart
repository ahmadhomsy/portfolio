import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({required this.title, required this.onTap, super.key});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyles.poppins18whiteBold300,
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 15),
      hoverColor: AppColors.turquoise.withValues(alpha: 0.1),
    );
  }
}
