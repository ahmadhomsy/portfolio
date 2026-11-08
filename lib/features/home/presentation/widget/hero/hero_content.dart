import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';
import 'package:portfolio_flutter/features/home/data/hero_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/social_row.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/cta_button.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/job_title.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({
    required this.crossAxisAlignment,
    required this.mainAxisAlignment,
    required this.textAlign,
    this.isMobile = false,
    super.key,
  });
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final TextAlign textAlign;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SelectableText(
          HeroSectionData.introText,
          style: AppTextStyles.poppins20turquoiseRegularly,
        ).animate().fadeIn(duration: 600.ms).slideX(),
        20.verticalSpace,
        Text(
          HeroSectionData.myName,
          style: isMobile
              ? AppTextStyles.poppins40cloudBlueBold
              : AppTextStyles.poppins30cloudBlueBold,
          textAlign: textAlign,
        ).animate().fadeIn(delay: 200.ms, duration: 600.ms).slideX(),
        10.verticalSpace,
        JobTitle(
          mainAxisAlignment: mainAxisAlignment,
        ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
        30.verticalSpace,
        SizedBox(
          width: 600,
          child: Text(
            HeroSectionData.heroDescription,
            style: AppTextStyles.poppins14coolGrey,
            textAlign: textAlign,
          ),
        ).animate().fadeIn(delay: 600.ms, duration: 600.ms).slideY(),
        50.verticalSpace,
        Row(
          mainAxisAlignment: mainAxisAlignment,
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
            10.horizontalSpace,
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
        ).animate().fadeIn(delay: 800.ms, duration: 600.ms).slideY(),
        50.verticalSpace,
        SocialRow(
          mainAxisAlignment: mainAxisAlignment,
        ),
      ],
    );
  }
}
