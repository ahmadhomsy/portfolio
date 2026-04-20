import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    super.key,
  });
  final IconData icon;
  final String tooltip;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.grey[400],
          size: 24,
        ),
      ),
    ).animate().fadeIn(delay: 400.ms);
  }
}
