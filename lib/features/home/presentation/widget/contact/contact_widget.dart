import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    required this.titleText,
    required this.bodyText,
    required this.icon,
    super.key,
    this.onTap,
  });
  final String bodyText;
  final String titleText;
  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HoverCubit(),
      child: BlocBuilder<HoverCubit, bool>(
        builder: (context, isHovered) {
          return MouseRegion(
            onEnter: (_) => context.read<HoverCubit>().hoverEnter(),
            onExit: (_) => context.read<HoverCubit>().hoverExit(),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              decoration: BoxDecoration(
                color: AppColors.darkSlate,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isHovered
                      ? AppColors.turquoise.withValues(alpha: 0.5)
                      : AppColors.pickledBlueWood,
                ),
                boxShadow: isHovered
                    ? [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ]
                    : [],
              ),
              transform: Matrix4.diagonal3Values(
                isHovered ? 1.015 : 1.0,
                isHovered ? 1.015 : 1.0,
                1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.charcoalBlue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        icon,
                        color: AppColors.turquoise,
                        size: 32,
                      ),
                    ),
                  ),
                  16.verticalSpace,
                  Text(
                    titleText,
                    style: AppTextStyles.poppins16grey400Bold,
                  ),
                  12.verticalSpace,
                  Text(
                    bodyText,
                    style: AppTextStyles.poppins16grey400regularly,
                  ),
                ],
              ),
            ),
          )
              .animate()
              .fade(duration: 500.ms, delay: 200.ms)
              .scale(duration: 500.ms);
        },
      ),
    );
  }
}
