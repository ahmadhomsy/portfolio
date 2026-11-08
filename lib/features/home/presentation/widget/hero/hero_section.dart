import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/hero_content.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/profile_image.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isDesktop = Responsive.isDesktop(screenWidth);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 20,
        vertical: isDesktop ? 100 : 70,
      ),
      child: isDesktop ? _buildDesktopLayout() : _buildMobileLayout(),
    );
  }

  Widget _buildDesktopLayout() {
    return const Row(
      children: [
        Expanded(
          child: HeroContent(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          child: Center(
            child: _AnimatedProfileImage(size: 400),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: _AnimatedProfileImage(size: 300),
        ),
        HeroContent(
          isMobile: true,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _AnimatedProfileImage extends StatelessWidget {
  const _AnimatedProfileImage({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ProfileImage(size: size)
          .animate(onPlay: (controller) => controller.repeat())
          .shimmer(
            duration: 5000.ms,
            color: AppColors.turquoise.withValues(alpha: 0.3),
          )
          .animate()
          .fadeIn(duration: 800.ms)
          .scale(),
    );
  }
}
