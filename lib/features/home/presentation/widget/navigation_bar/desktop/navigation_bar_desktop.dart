import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/desktop/desktop_nav_list.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/desktop/logo_nav_desktop.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Padding(
        padding: EdgeInsets.only(left: 50, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LogoNavDesktop(),
            DesktopNavList(),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 50.ms);
  }
}
