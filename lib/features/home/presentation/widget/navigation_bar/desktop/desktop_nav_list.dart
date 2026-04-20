import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/features/home/data/nav_constant.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/desktop/nav_item.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/navigation_bar/download_resume.dart';

class DesktopNavList extends StatelessWidget {
  const DesktopNavList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...navItems.entries.map(
          (entry) => NavItem(
            title: entry.key,
            section: entry.value,
          ),
        ),
        20.horizontalSpace,
        const DownloadResume(),
      ],
    );
  }
}
