import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/extension/sized_box_extension.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    required this.icon,
    required this.text,
    this.iconColor,
    super.key,
  });

  final IconData icon;
  final String text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      child: Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                icon,
                color: iconColor ?? AppColors.grey600,
                size: 16,
              ),
            ),
            WidgetSpan(
              child: 6.horizontalSpace,
            ),
            TextSpan(
              text: text,
              style: AppTextStyles.poppins13grey,
            ),
          ],
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
