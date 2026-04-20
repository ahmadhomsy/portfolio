import 'package:flutter/material.dart';

class ProjectSectionData {
  static const Duration animationDuration = Duration(milliseconds: 300);

  static const List<ProjectModel> projectsList = [
    ProjectModel(
      id: 'Simple Chat App',
      title: 'Simple Chat App',
      description:
          'A real-time messaging platform built with Flutter and Firebase, featuring seamless instant communication.',
      imagePath: 'assets/images/simple_chat_app/img.png',
      sources: [],
    ),
    ProjectModel(
      id: 'Daily Done App',
      title: 'Daily Done App',
      description:
          'DailyDone is a Flutter-based task management application designed to help users organize and track their daily tasks efficiently.',
      imagePath: 'assets/images/daily_done/img.png',
      sources: [
        ProjectSource(
          label: 'GitHub',
          icon: Icons.code,
          url:
              'https://github.com/ahmadhomsy/daily_done_app_flutter_clean_code_architecture',
        ),
      ],
    ),
    ProjectModel(
      id: 'Weather App',
      title: 'Weather App',
      description:
          'A simple and easy-to-use weather application that displays the current weather based on your location, built with Flutter using Clean Code Architecture.',
      imagePath: 'assets/images/weather/weather_app_project.png',
      sources: [
        ProjectSource(
          label: 'GitHub',
          icon: Icons.code,
          url:
              'https://github.com/ahmadhomsy/weather_app_flutter_clean_code_architecture',
        ),
      ],
    ),
    ProjectModel(
      id: 'Quiz App',
      title: 'Quiz App',
      description:
          'An interactive Flutter Quiz App that allows users to enter their name and answer multiple-choice questions with score tracking.',
      imagePath: 'assets/images/quiz_app/quiz_app_project.png',
      sources: [
        ProjectSource(
          label: 'GitHub',
          icon: Icons.code,
          url: 'https://github.com/ahmadhomsy/Quiz-App',
        ),
      ],
    ),
    ProjectModel(
      id: 'bmi calculator',
      title: 'bmi calculator',
      description:
          'A simple Flutter app that calculates the Body Mass Index (BMI) based on user input. Designed as a beginner-friendly project to practice UI, navigation, and basic logic in Flutter.',
      imagePath: 'assets/images/bmi_calculator/bmi_calculator.png',
      sources: [
        ProjectSource(
          label: 'GitHub',
          icon: Icons.code,
          url: 'https://github.com/ahmadhomsy/bmi_calculator',
        ),
      ],
    ),
  ];
}

class ProjectModel {
  const ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.sources,
  });
  final String id;
  final String title;
  final String description;
  final String imagePath;
  final List<ProjectSource> sources;
}

class ProjectSource {
  const ProjectSource({
    required this.label,
    required this.icon,
    required this.url,
  });
  final String label;
  final IconData icon;
  final String url;
}
