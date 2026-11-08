import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';
import 'package:portfolio_flutter/features/home/data/nav_constant.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/download_resume.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/drawer_item.dart';

class MobileTabletDrawer extends StatelessWidget {
  const MobileTabletDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width / 1.3,
      backgroundColor: Colors.transparent,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.8),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon:
                            const Icon(Icons.close, color: AppColors.turquoise),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    ...navItems.entries.map(
                      (entry) => DrawerItem(
                        title: entry.key,
                        onTap: () async {
                          Navigator.pop(context);
                          await context
                              .read<NavigationCubit>()
                              .scrollTo(entry.value);
                        },
                      ).animate().fadeIn(delay: 100.ms).scale(),
                    ),
                    20.verticalSpace,
                    const DownloadResume(),
                    20.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ).animate().fadeIn(delay: 10.ms).scale(),
    );
  }
}
