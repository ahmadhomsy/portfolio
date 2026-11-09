import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';

class ProjectInfoCard extends StatelessWidget {
  const ProjectInfoCard({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final items = [
      _InfoItem(Icons.calendar_today, 'Duration', project.duration),
      // _InfoItem(Icons.person_outline, 'Client', project.client),
      _InfoItem(Icons.star_outline, 'Rating', project.rating),
      _InfoItem(Icons.download, 'Downloads', project.downloads),
    ];

    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.surface, AppColors.surfaceLight],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.turquoise.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project Info',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 20),
          ...items.indexed.map(
            (entry) => _InfoRow(item: entry.$2, animationIndex: entry.$1),
          ),
          const SizedBox(height: 20),
          _ProjectActionButtons(project: project)
              .animate()
              .fadeIn(delay: 800.ms, duration: 500.ms),
        ],
      ),
    );
  }
}

// ─── Data class ───────────────────────────────────────────────

class _InfoItem {
  const _InfoItem(this.icon, this.label, this.value);
  final IconData icon;
  final String label;
  final String value;
}

// ─── Sub-widgets ──────────────────────────────────────────────

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.item, required this.animationIndex});

  final _InfoItem item;
  final int animationIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.turquoise.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(item.icon, color: AppColors.turquoise, size: 18),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.label,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColors.coolGrey,
                ),
              ),
              Text(
                item.value,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(
          delay: Duration(milliseconds: 400 + animationIndex * 100),
          duration: 500.ms,
        )
        .slideX(begin: 0.1, end: 0);
  }
}

// ─── Action Buttons ───────────────────────────────────────────

class _ProjectActionButtons extends StatelessWidget {
  const _ProjectActionButtons({required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PrimaryButton(
          icon: Icons.code,
          label: 'View Source Code',
          onTap: () => _launchUrl(project.sourceCodeUrl),
        ),
        const SizedBox(height: 12),
        _SecondaryButton(
          icon: Icons.open_in_new,
          label: 'Live Demo',
          onTap: () => _launchUrl(project.liveDemoUrl),
        ),
      ],
    );
  }

  void _launchUrl(String? url) {
    if (url == null || url.isEmpty) return;
    // يمكنك استخدام url_launcher هنا
    // launchUrl(Uri.parse(url));
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.turquoise,
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 15),
          textStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.turquoise,
          side: const BorderSide(color: AppColors.turquoise),
          padding: const EdgeInsets.symmetric(vertical: 15),
          textStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
