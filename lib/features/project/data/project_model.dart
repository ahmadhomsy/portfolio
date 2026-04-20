import 'package:flutter/foundation.dart';
import 'package:portfolio_flutter/core/enums/project_status.dart';

@immutable
class ProjectModel {
  const ProjectModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.status,
    required this.description,
    required this.longDescription,
    required this.duration,
    required this.client,
    required this.rating,
    required this.downloads,
    required this.images,
    required this.features,
    required this.techStack,
    required this.sourceCodeUrl,
    required this.liveDemoUrl,
  });

  final String id;
  final String title;
  final String subtitle;
  final String category;
  final ProjectStatus status;
  final String description;
  final String longDescription;
  final String duration;
  final String client;
  final String rating;
  final String downloads;
  final List<String> images;
  final List<String> features;
  final List<String> techStack;
  final String sourceCodeUrl;
  final String liveDemoUrl;
}

@immutable
class ProjectNavItem {
  const ProjectNavItem({required this.id, required this.title});
  final String id;
  final String title;
}
