import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/data/contact_section_data.dart';

class ContactText extends StatelessWidget {
  const ContactText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Text(
        ContactSectionData.contactText,
        textAlign: TextAlign.center,
        style: AppTextStyles.poppins16grey400regularly,
      ),
    );
  }
}
