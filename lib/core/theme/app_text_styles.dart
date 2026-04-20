import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_flutter/core/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles({required this.isMobile});
  final bool isMobile;
  static TextStyle poppins20coolGreyBold = GoogleFonts.poppins(
    // fontSize: isMobile ? 30 : 50,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.coolGrey,
  );
  static TextStyle poppins20turquoiseRegularly = GoogleFonts.firaCode(
    color: AppColors.turquoise,
    // fontSize: isMobile ? 16 : 20,
    fontSize: 20,
  );
  static TextStyle poppins40cloudBlueBold = GoogleFonts.poppins(
    // fontSize: isMobile ? 40 : 70,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.turquoise,
  );
  static TextStyle poppins30cloudBlueBold = GoogleFonts.poppins(
    // fontSize: isMobile ? 40 : 70,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.turquoise,
  );
  static TextStyle poppins50cloudBlueBold = GoogleFonts.poppins(
    // fontSize: isMobile ? 30 : 50,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.turquoise,
  );
  static TextStyle poppins20cloudBlueBold = GoogleFonts.poppins(
    // fontSize: isMobile ? 30 : 50,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.turquoise,
  );
  static TextStyle poppins14grey500regularly = const TextStyle(
    fontSize: 14,
    color: AppColors.grey500,
  );
  static TextStyle poppins14grey500Bold600 = const TextStyle(
    fontSize: 14,
    color: AppColors.grey500,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins12grey600regularly = const TextStyle(
    fontSize: 12,
    color: AppColors.grey600,
  );
  static TextStyle poppins16grey400regularly = const TextStyle(
    fontSize: 16,
    color: AppColors.grey400,
    height: 1.6,
  );
  static TextStyle poppins32whiteBold = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle poppins20turquoiseBold600 = const TextStyle(
    fontSize: 20,
    color: AppColors.turquoise,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins14grey400Regularly = const TextStyle(
    color: AppColors.grey400,
    fontSize: 14.5,
    height: 1.55,
  );
  static TextStyle poppins12grey400Regularly = GoogleFonts.poppins(
    color: AppColors.grey400,
    fontSize: 13,
  );

  static TextStyle poppins12vividIndigoRegularly = GoogleFonts.poppins(
    color: AppColors.vividIndigo,
    fontSize: 13,
  );
  static TextStyle poppins16White = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 16,
  );
  static TextStyle poppins16vividIndigo = GoogleFonts.poppins(
    color: AppColors.vividIndigo,
    fontSize: 16,
  );
  static TextStyle poppins14turquoiseBold500 = GoogleFonts.poppins(
    color: AppColors.turquoise,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppins24turquoiseBold = GoogleFonts.firaCode(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.turquoise,
  );
  static TextStyle poppins14turquoiseBold600 = GoogleFonts.poppins(
    color: AppColors.turquoise,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins14whiteBold400 = GoogleFonts.poppins(
    color: AppColors.white.withValues(alpha: 0.7),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle poppins18whiteBold300 = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    letterSpacing: 2,
    fontWeight: FontWeight.w300,
  );
  static TextStyle poppinsPrimaryBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 18,
      color: AppColors.primary,
      fontWeight: FontWeight.bold,
    ),
  );
  static TextStyle poppins16Bold600 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );
  static TextStyle poppins16grey400Bold = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.grey400,
    letterSpacing: 1.5,
  );
  static TextStyle poppins18whiteBold = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle poppins14white = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 14,
  );
  static TextStyle poppins14grey400 = GoogleFonts.poppins(
    color: AppColors.grey400,
    fontSize: 14,
  );
  static TextStyle poppins14coolGrey = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.coolGrey,
    height: 1.5,
  );
  static TextStyle poppins14whiteBold500 = GoogleFonts.poppins(
    color: AppColors.white.withValues(alpha: 0.7),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppins13whiteItalic = GoogleFonts.poppins(
    color: AppColors.white.withValues(alpha: 0.4),
    fontSize: 13,
    fontStyle: FontStyle.italic,
  );
  static TextStyle poppins14periwinkleBold = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle poppins18vividIndigoBold = GoogleFonts.poppins(
    color: AppColors.vividIndigo,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle poppins16whiteBold600 = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins13grey =
      GoogleFonts.poppins(color: AppColors.grey, fontSize: 13);
  static TextStyle poppins13vividIndigoBold600 = GoogleFonts.poppins(
    color: AppColors.vividIndigo,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins14turquoise = GoogleFonts.poppins(
    color: AppColors.turquoise,
    fontSize: 14,
  );
  static TextStyle poppins12bold600 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppins42textPrimaryBold = GoogleFonts.poppins(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );
  static TextStyle poppins20coolGrey = GoogleFonts.poppins(
    fontSize: 20,
    color: AppColors.coolGrey,
  );
}
