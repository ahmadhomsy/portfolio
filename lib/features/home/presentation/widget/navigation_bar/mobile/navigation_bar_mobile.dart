import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/download_resume.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/mobile/logo_nav_mobile.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/mobile/mobile_menu_icon.dart';

class NavBarMobileTablet extends StatelessWidget {
  const NavBarMobileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isTablet = Responsive.isTablet(screenWidth);
        return SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LogoNavMobile(),
                if (isTablet)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const DownloadResume(),
                      12.horizontalSpace,
                      const MobileMenuIcon(),
                    ],
                  )
                else
                  const MobileMenuIcon(),
              ],
            ),
          ),
        ).animate().fadeIn(duration: 50.ms).scale();
      },
    );
  }
}
