import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class EducationSectionData {
  static const List<EducationItem> itemsEducation = [
    EducationItem(
      icon: Icons.school_outlined,
      title: 'Bachelor’s Degree in Software Engineering',
      institution: 'Damascus University',
      description:
          'Faculty of Information Technology Engineering\nFocus on Algorithms, Data Structures, and Compiler Construction.',
      badge1Text: 'Current Student',
      badge2Text: '2022 - 2027 (Expected)',
    ),
    EducationItem(
      icon: LucideIcons.award,
      title: 'Professional Training Certificate',
      institution: 'Al-Rasheed Charity',
      description:
          'Intensive professional development program. Completed 72 training hours focusing on specialized technical skills.',
      badge1Text: 'Certification',
      badge2Text: '2024',
    ),
  ];
}

class EducationItem {
  const EducationItem({
    required this.icon,
    required this.title,
    required this.institution,
    required this.description,
    required this.badge1Text,
    required this.badge2Text,
  });

  final IconData icon;
  final String title;
  final String institution;
  final String description;
  final String badge1Text;
  final String badge2Text;
}
