import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/helpers/launcher_service.dart';
import 'package:portfolio_flutter/core/widget/header_section.dart';
import 'package:portfolio_flutter/core/widget/line_style.dart';
import 'package:portfolio_flutter/core/widget/section.dart';
import 'package:portfolio_flutter/features/home/data/contact_section_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/contact_text.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/contact_widget.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/hello_button.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/social_row.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;

    return Section(
      child: Column(
        children: [
          const HeaderSection(title: 'Get In Touch'),
          10.verticalSpace,
          const LineStyle(
            height: 4,
            width: 60,
          ),
          40.verticalSpace,
          const ContactText(),
          if (!isDesktop) ...[
            50.verticalSpace,
            const HelloButton(),
          ],
          50.verticalSpace,
          Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 30,
              runSpacing: 20,
              children: [
                ContactWidget(
                  bodyText: ContactSectionData.email,
                  icon: Icons.email_outlined,
                  onTap: isDesktop
                      ? null
                      : () async {
                          await LauncherService.openEmail({
                            'email': ContactSectionData.email,
                          });
                        },
                  titleText: 'EMAIL',
                ),
                ContactWidget(
                  bodyText: ContactSectionData.phone,
                  icon: Icons.phone,
                  onTap: isDesktop
                      ? null
                      : () async {
                          await LauncherService.openPhone(
                              ContactSectionData.phone);
                        },
                  titleText: 'PHONE',
                ),
                const ContactWidget(
                  bodyText: ContactSectionData.location,
                  icon: Icons.location_on_outlined,
                  titleText: 'LOCATION',
                ),
              ],
            ),
          ),
          80.verticalSpace,
          const SocialRow(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
