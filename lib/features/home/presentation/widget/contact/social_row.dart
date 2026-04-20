import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/core/extension/SizedBoxExtension.dart';
import 'package:portfolio_flutter/core/helpers/launcher_service.dart';
import 'package:portfolio_flutter/features/home/data/url_data.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/social_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({required this.mainAxisAlignment, super.key});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SocialIconButton(
          icon: FontAwesomeIcons.github,
          tooltip: 'GitHub',
          onPressed: () async {
            await LauncherService.openUrl(UrlData.gitHubUrl);
          },
        ),
        20.horizontalSpace,
        SocialIconButton(
          icon: FontAwesomeIcons.linkedin,
          tooltip: 'LinkedIn',
          onPressed: () async {
            await LauncherService.openUrl(UrlData.linkedInUrl);
          },
        ),
        20.horizontalSpace,
        SocialIconButton(
          icon: FontAwesomeIcons.instagram,
          tooltip: 'Instagram',
          onPressed: () async {
            await LauncherService.openUrl(UrlData.instagramUrl);
          },
        ),
      ],
    ).animate().fade(duration: 600.ms, delay: 400.ms).slideY(begin: 0.2);
  }
}
