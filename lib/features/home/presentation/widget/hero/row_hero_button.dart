import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/cta_button.dart';

class RowHeroButton extends StatelessWidget {
  const RowHeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocProvider(
          create: (_) => HoverCubit(),
          child: CTAButton(
            text: 'View My Work',
            onTap: () async {
              await context
                  .read<NavigationCubit>()
                  .scrollTo(NavSection.projects);
            },
          ),
        ),
        20.horizontalSpace,
        BlocProvider(
          create: (_) => HoverCubit(),
          child: CTAButton(
            text: 'Contact Me',
            outlined: true,
            onTap: () async {
              await context
                  .read<NavigationCubit>()
                  .scrollTo(NavSection.contact);
            },
          ),
        ),
      ],
    ).animate().fadeIn(delay: 800.ms, duration: 600.ms).slideY();
  }
}
