import 'package:flutter/material.dart';

enum ProjectStatus {
  completed('Completed', Colors.green),
  inProgress('In Progress', Colors.orange),
  beta('Beta', Colors.blue),
  unknown('Unknown', Colors.grey);

  const ProjectStatus(this.label, this.color);
  final String label;
  final Color color;
}
