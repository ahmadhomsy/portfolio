import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    required this.section,
    required this.title,
    super.key,
  });
  final String title;
  final NavSection section;

  @override
  Widget build(BuildContext context) {
    final isSelected = context
        .select<NavigationCubit, bool>((cubit) => cubit.state == section);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        mouseCursor: SystemMouseCursors.click,
        onTap: () => context.read<NavigationCubit>().scrollTo(section),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectionContainer.disabled(
              child: Text(
                title,
                style: isSelected
                    ? AppTextStyles.poppins14turquoiseBold600
                    : AppTextStyles.poppins14whiteBold400,
              ),
            ),
            4.verticalSpace,
            const LineStyle(height: 2, width: 20)
                .animate(
                  target: isSelected ? 1 : 0,
                )
                .fade(duration: 200.ms)
                .scaleX(
                  alignment: Alignment.center,
                  curve: Curves.easeOutBack,
                ),
          ],
        ),
      ),
    );
  }
}
