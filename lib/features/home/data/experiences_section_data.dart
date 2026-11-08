class ExperiencesSectionData {
  static final List<ExperienceModel> experiences = [
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'University Project',
      location: 'Remote',
      date: '2026',
      projectName: 'Sham Booking',
      responsibilities: [
        'Architected a production-ready hotel booking app using Clean Architecture and BLoC for scalable state management.',
        'Integrated RESTful APIs via Dio with access/refresh token rotation and secure storage mechanisms.',
        'Implemented dual payment methods (Online Card Payment & Cash on Arrival) and complete reservation lifecycle tracking.',
        'Integrated Google Maps SDK for location tracking, Firebase Cloud Messaging for push notifications, and multi-language support.',
        'Configured Development & Production environments (Flavors) along with CI/CD automation pipelines.',
      ],
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'Personal Project',
      location: 'Remote',
      date: '2026',
      projectName: 'Simple Chat App',
      responsibilities: [
        'Integrated Firebase (Firestore & Auth) for real-time synchronization with latency below 200ms.',
        'Developed a responsive UI for seamless messaging and user profile management.',
        'Implemented efficient stream-based state management for real-time data flow.',
      ],
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'Personal Project',
      location: 'Remote',
      date: 'April 2025',
      responsibilities: [
        'Designed a scalable application using Clean Architecture and BLoC, reducing debugging time by 25%.',
        'Implemented local data storage using Sqflite for 100% offline functionality and data integrity.',
        'Integrated local notifications for reminders, improving user engagement and retention.',
        'Added advanced features including Biometric Authentication and Dynamic Theming.',
      ],
      projectName: 'Daily Done App',
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'Personal Project',
      location: 'Remote',
      date: 'March 2025',
      responsibilities: [
        'Integrated OpenWeatherMap API to provide real-time data for 200,000+ cities globally.',
        'Implemented multi-language support (Localization) to enhance user accessibility.',
        'Optimized API calling logic to ensure high performance and low data consumption.',
      ],
      projectName: 'Weather App',
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'Personal Project',
      location: 'Remote',
      date: 'December 2024',
      projectName: 'Quiz App',
      responsibilities: [
        'Engineered a robust state management system using BLoC to synchronize dynamic question flows and scoring logic.',
        'Designed a gamified UI/UX with custom animations and smooth page transitions to enhance user engagement and retention.',
        'Implemented a performance-oriented result summary module, providing users with detailed analytics of their performance.',
        'Optimized asset handling and local caching to ensure a seamless, lag-free experience during high-speed quiz interactions.',
      ],
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      company: 'Personal Project',
      location: 'Remote',
      date: 'October 2024',
      responsibilities: [
        'Implemented precise health-metric calculation logic based on global WHO standards.',
        'Applied input validation and error handling to ensure data integrity and app stability.',
      ],
      projectName: 'bmi calculator',
    ),
  ];
}

class ExperienceModel {
  ExperienceModel({
    required this.title,
    required this.company,
    required this.location,
    required this.date,
    required this.responsibilities,
    this.projectName,
  });
  final String title;
  final String company;
  final String location;
  final String date;
  final List<String> responsibilities;
  final String? projectName;
}
