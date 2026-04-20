import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';

class FadingDivider extends StatelessWidget {
  const FadingDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.vividIndigo.withValues(alpha: 0.5),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
