import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';

class LogoNavMobile extends StatelessWidget {
  const LogoNavMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () async {
          await context.read<NavigationCubit>().scrollTo(NavSection.home);
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.turquoise,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: SelectionContainer.disabled(
              child: Text(
                'A',
                style: AppTextStyles.poppinsPrimaryBold,
              ),
            ),
          ),
        ),
      ),
    ).animate().fadeIn(delay: 100.ms).scale();
  }
}
