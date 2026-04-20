import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Column(
        children: [
          Text(
            'Designed & Built by',
            style: AppTextStyles.poppins14grey500regularly,
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.copyright,
                size: 14,
                color: AppColors.grey500,
              ),
              4.horizontalSpace,
              Text(
                '${DateTime.now().year} Ahmad Alhomsy',
                style: AppTextStyles.poppins14grey500Bold600,
              ),
            ],
          ),
          20.verticalSpace,
          Text(
            'Built with love and Flutter ',
            style: AppTextStyles.poppins12grey600regularly,
          ),
        ],
      ),
    )
        .animate()
        .fade(duration: 600.ms)
        .slideY(begin: 0.2, curve: Curves.easeOut);
  }
}
