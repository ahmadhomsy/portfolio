import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 2,
          ),
          child: Icon(
            Icons.check,
            color: Color(0xFF6B66FF),
            size: 20,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: const Color(0xFFB5B7C8),
              fontSize: 14,
              height: 1.6,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
