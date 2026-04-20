import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/home/data/hero_section_data.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({required this.size, super.key});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.turquoise,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.turquoise.withValues(alpha: 0.3),
            blurRadius: 50,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          HeroSectionData.profileImage,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
