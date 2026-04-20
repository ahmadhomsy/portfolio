import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';

class ProjectHeaderNav extends StatelessWidget {
  const ProjectHeaderNav({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = Responsive.isDesktop(screenWidth);
    return Padding(
      padding: EdgeInsets.only(
        top: isDesktop ? 20 : 10,
        left: isDesktop ? 20 : 10,
        bottom: isDesktop ? 20 : 0,
      ),
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back),
        color: AppColors.turquoise,
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.turquoise),
          ),
        ),
      ),
    );
  }
}
