import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';

class CTAButton extends StatelessWidget {
  const CTAButton({
    required this.onTap,
    required this.text,
    super.key,
    this.outlined = false,
  });
  final String text;
  final bool outlined;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = Responsive.isDesktop(screenWidth);
    return BlocBuilder<HoverCubit, bool>(
      builder: (context, isHover) {
        return MouseRegion(
          onEnter: (_) => context.read<HoverCubit>().hoverEnter(),
          onExit: (_) => context.read<HoverCubit>().hoverExit(),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.symmetric(
                horizontal: isDesktop ? 30 : 10,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: outlined
                    ? Colors.transparent
                    : (isHover
                        ? AppColors.turquoiseSecondary
                        : AppColors.turquoise),
                border: Border.all(
                  color: AppColors.turquoise,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: SelectionContainer.disabled(
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    color: outlined ? AppColors.turquoise : AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
