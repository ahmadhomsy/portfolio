import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_flutter/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData mainTheme() {
    return ThemeData(
      fontFamilyFallback: const [
        'Noto Color Emoji',
        'Apple Color Emoji',
      ],
      scrollbarTheme: ScrollbarThemeData(
        radius: const Radius.circular(10),
        thickness: WidgetStateProperty.all(8),
        crossAxisMargin: 4,
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.turquoise.withValues(alpha: 0.8);
          }
          return AppColors.turquoise;
        }),
      ),
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primary,
      textTheme: GoogleFonts.poppinsTextTheme(
        ThemeData.light().textTheme.apply(
              bodyColor: AppColors.white,
              displayColor: AppColors.white,
            ),
        // Theme.of(context).textTheme.apply(
        //       bodyColor: Colors.white,
        //       displayColor: Colors.white,
        //     ),
      ),
    );
  }

  static const BoxDecoration mainBackgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppColors.primary,
        AppColors.lightNavy,
        AppColors.primary,
      ],
    ),
  );
  static final ButtonStyle helloButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: const Color(0xFF64FFDA),
    side: const BorderSide(color: Color(0xFF64FFDA)),
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
  static final ButtonStyle viewProject = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    // foregroundColor: const Color(0xFF64FFDA),
    // side: const BorderSide(color: Color(0xFF64FFDA)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
