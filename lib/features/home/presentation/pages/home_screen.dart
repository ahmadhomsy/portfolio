import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_theme.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';
import 'package:portfolio_flutter/features/home/data/hero_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/home/content_home_body.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/desktop/navigation_bar_desktop.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/mobile/navigation_bar_mobile.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/mobile_tablet_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _hasPrecachedHero = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasPrecachedHero) {
      _hasPrecachedHero = true;
      _precacheHeroImage();
    }
  }

  void _precacheHeroImage() {
    unawaited(
      precacheImage(
        const AssetImage(HeroSectionData.profileImage),
        context,
        onError: (_, __) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isDesktop = Responsive.isDesktop(screenWidth);

    return Scaffold(
      endDrawer: const MobileTabletDrawer(),
      body: SelectionArea(
        child: Stack(
          children: [
            const DecoratedBox(
              decoration: AppTheme.mainBackgroundGradient,
              child: SizedBox.expand(),
            ),
            Scrollbar(
              controller: navCubit.scrollController,
              thumbVisibility: isDesktop,
              child: const ContentHomeBody(),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: isDesktop ? 20 : 0,
              child: isDesktop
                  ? const NavBarDesktop()
                  : const NavBarMobileTablet(),
            ),
          ],
        ),
      ),
    );
  }
}
