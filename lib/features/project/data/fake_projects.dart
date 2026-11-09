import 'package:portfolio_flutter/core/enums/project_status.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart'
    show ProjectModel;

class FakeProjects {
  FakeProjects._();

  static final List<ProjectModel> all = [
    _shamBooking,
    _simpleChatApp,
    _dailyDoneApp,
    _weatherApp,
    _quizApp,
    _bmiCalculator,
  ];

  static ProjectModel? getById(String? id) {
    if (id == null) return null;
    return all.cast<ProjectModel?>().firstWhere(
          (p) => p?.id.toLowerCase() == id.toLowerCase(),
          orElse: () => null,
        );
  }

  static const _shamBooking = ProjectModel(
    id: 'Sham Booking',
    title: 'Sham Booking',
    subtitle: 'Production-ready hotel booking platform with secure payments',
    category: 'Travel & Hospitality',
    status: ProjectStatus.completed,
    description:
        'Sham Booking is an end-to-end hotel reservation platform offering hotel discovery, '
        'real-time room availability, integrated maps, and multiple payment methods.',
    longDescription:
        'Sham Booking is a production-oriented mobile application featuring a comprehensive '
        'booking lifecycle. It allows users to browse hotels via maps, check availability, '
        'and choose between online card payments or cash on arrival. Built with Clean Architecture '
        'and BLoC, it seamlessly communicates with a NestJS/Node.js backend. The app integrates '
        'Firebase, Google Maps, secure token storage, and CI/CD pipelines, supporting distinct '
        'Development and Production environments (Flavors).',
    duration: '2 weeks',
    client: 'University Project',
    rating: '',
    downloads: '',
    images: [
      'assets/images/sham_booking/img_1.jpg',
      'assets/images/sham_booking/img_2.jpg',
      'assets/images/sham_booking/img_3.jpg',
      'assets/images/sham_booking/img_4.jpg',
      'assets/images/sham_booking/img_5.jpg',
      'assets/images/sham_booking/img_6.jpg',
      'assets/images/sham_booking/img_7.jpg',
      'assets/images/sham_booking/img_8.jpg',
      'assets/images/sham_booking/img_9.jpg',
      'assets/images/sham_booking/img_10.jpg',
      'assets/images/sham_booking/img_11.jpg',
    ],
    features: [
      'Hotel & Room Discovery with Maps',
      'Real-time Availability Checking',
      'Online Card & Cash on Arrival Payments',
      'Reservation Lifecycle & Cancellation Policy',
      'Email Verification & Secure Authentication',
      'Push Notifications (FCM)',
      'Development & Production Flavors',
      'Multi-language (Localization) Support',
    ],
    techStack: [
      'Flutter & Dart',
      'Clean Architecture',
      'BLoC / Cubit',
      'NestJS / Node.js (Backend)',
      'Dio & GetIt (DI)',
      'Firebase & Google Maps SDK',
      'Payment SDK Integration',
      'CI/CD Workflows',
    ],
    sourceCodeUrl: 'https://github.com/ahmadhomsy/sham-booking',
    liveDemoUrl: '',
  );
  static const _simpleChatApp = ProjectModel(
    id: 'Simple Chat App',
    title: 'Simple-Chat-App',
    subtitle: 'Real-time messaging app with a clean and simple interface',
    category: 'Communication',
    status: ProjectStatus.inProgress,
    description:
        'Simple Chat App is a real-time messaging application that allows users '
        'to communicate instantly through private and secure conversations.',
    longDescription:
        'Simple Chat App enables users to send and receive messages in real time '
        'using modern communication technologies. It supports one-to-one chat, '
        'message status (sent, delivered, seen), and a clean UI focused on simplicity '
        'and speed. The app is designed using Clean Architecture principles with '
        'efficient state management for smooth performance.',
    duration: 'In progress',
    client: 'Personal Project',
    rating: '',
    downloads: '',
    images: [],
    features: [
      'Real-time Messaging',
      'One-to-One Chat',
      'Message Status (Sent / Seen)',
      'Push Notifications',
      'User Online Status',
      'Simple and Clean UI',
      'Secure Communication',
      'Dark & Light Theme',
      'Multi-language (Localization) Support',
    ],
    techStack: [
      'Flutter',
      'Dart',
      'Firebase Firestore',
      'Firebase Auth',
      'Push Notifications (FCM)',
      'Clean Architecture',
      'BLoC / Cubit',
      'Real-time Sync',
    ],
    sourceCodeUrl: 'https://github.com/ahmadhomsy',
    liveDemoUrl: '',
  );
  static const _dailyDoneApp = ProjectModel(
    id: 'Daily Done App',
    title: 'Daily Done App',
    subtitle: 'Smart and simple task management for your daily productivity',
    category: 'Productivity',
    status: ProjectStatus.completed,
    description:
        'DailyDone is a Flutter-based task management application designed '
        'to help users organize, track, and complete their daily tasks '
        'efficiently with a clean and intuitive interface.',
    longDescription:
        'DailyDone helps users improve productivity by allowing them to create, '
        'edit, and manage tasks in an organized way. The app follows Clean Code '
        'Architecture principles and uses state management for scalable design. '
        'Users can categorize tasks, set priorities, and track progress over time. '
        'It is designed with a focus on simplicity, performance, and user experience.',
    duration: '2 weeks',
    client: 'Personal Project',
    rating: '',
    downloads: '',
    images: [
      'assets/images/daily_done/img_1.webp',
      'assets/images/daily_done/img_2.webp',
      'assets/images/daily_done/img_3.webp',
      'assets/images/daily_done/img_4.webp',
      'assets/images/daily_done/img_5.webp',
      'assets/images/daily_done/img_6.webp',
    ],
    features: [
      'Task Creation & Management',
      'Daily Task Organization',
      'Task Prioritization',
      'Progress Tracking',
      'Clean and Simple UI',
      'Offline Support',
      'Category-based Tasks',
      'Dark & Light Theme',
      'Daily Reminders Notifications',
      'Task Deadline Notifications',
      'Multi-language (Localization) Support',
    ],
    techStack: [
      'Flutter',
      'Dart',
      'Clean Architecture',
      'BLoC / Cubit',
      'SqfLite / Local Storage',
      'Biometric Authentication',
      'Dependency Injection',
    ],
    sourceCodeUrl:
        'https://github.com/ahmadhomsy/daily_done_app_flutter_clean_code_architecture',
    liveDemoUrl: '',
  );
  static const _weatherApp = ProjectModel(
    id: 'Weather App',
    title: 'Weather App',
    subtitle: 'Real-time accurate weather forecasts with beautiful UI',
    category: 'Weather',
    status: ProjectStatus.completed,
    description:
        'Weather App provides real-time weather updates with accurate forecasts '
        'including temperature, humidity, wind speed, and weather conditions '
        'for multiple locations around the world.',
    longDescription:
        'This Weather App uses a weather API to fetch real-time meteorological '
        'data and display it in a clean and user-friendly interface. It supports '
        'hourly and weekly forecasts, location search, and automatic location '
        'detection. The app uses state management for smooth performance and '
        'local caching to allow offline access to recent weather data.',
    duration: '1 weeks',
    client: 'Personal Project',
    rating: '',
    downloads: '',
    images: [
      'assets/images/weather/weather_1.jpg',
      'assets/images/weather/weather.jpg',
    ],
    features: [
      'Real-time Weather Updates',
      'Hourly Forecast',
      '7-Day Forecast',
      'Location Detection',
      'Multiple Cities Support',
      'Offline Caching',
      'Multi-language Support',
    ],
    techStack: [
      'Flutter',
      'Dart',
      'Weather API',
      'BLoC',
      'Local Storage (SharedPreferences)',
      'Location Services',
      'Clean Architecture',
    ],
    sourceCodeUrl:
        'https://github.com/ahmadhomsy/weather_app_flutter_clean_code_architecture',
    liveDemoUrl: '',
  );
  static const _quizApp = ProjectModel(
    id: 'Quiz App',
    title: 'Quiz App',
    subtitle: 'Interactive quiz experience to test and improve your knowledge',
    category: 'Education',
    status: ProjectStatus.completed,
    description:
        'Quiz App is an interactive learning application that allows users '
        'to test their knowledge through multiple-choice questions across '
        'different categories. It provides instant feedback and score tracking.',
    longDescription:
        'Quiz App is built to enhance learning through interactive quizzes. '
        'instant results with explanations. The app supports score tracking, '
        'progress history, and category-based quizzes. It uses clean architecture '
        'with state management for smooth performance and scalability.',
    duration: '2 days',
    client: 'Personal Project',
    images: [
      'assets/images/quiz_app/img.webp',
      'assets/images/quiz_app/img_1.webp',
      'assets/images/quiz_app/img_2.webp',
      'assets/images/quiz_app/img_3.webp',
      'assets/images/quiz_app/img_4.webp',
    ],
    features: [
      'Multiple Choice Questions',
      'Instant Answer Feedback',
      'Score Tracking System',
      'Clean and Simple UI',
      'Offline Quiz Support',
    ],
    techStack: [
      'Flutter',
      'Dart',
      'Cubit / BLoC',
      'Local Storage (SharedPreferences)',
      'Clean Architecture',
    ],
    sourceCodeUrl: 'https://github.com/ahmadhomsy/Quiz-App',
    liveDemoUrl: '',
    rating: '',
    downloads: '',
  );
  static const _bmiCalculator = ProjectModel(
    id: 'bmi calculator',
    title: 'BMI Calculator',
    subtitle: 'Quick and easy BMI calculation for your health',
    category: 'Utility',
    status: ProjectStatus.completed,
    description:
        'BMI Calculator helps users quickly calculate their Body Mass Index '
        'based on height and weight, providing a simple way to understand '
        'their body health status.',
    longDescription:
        'BMI Calculator determines the Body Mass Index using the standard '
        'BMI formula and categorizes the result into health ranges such as '
        'underweight, normal, overweight, and obese. The app features a '
        'clean and intuitive interface for easy input of height and weight. '
        'It also provides health tips based on the calculated BMI and '
        'stores previous results locally for quick reference.',
    duration: '2 days',
    client: 'Personal Project',
    images: [
      'assets/images/bmi_calculator/img_1.jpg',
      'assets/images/bmi_calculator/img_2.jpg',
    ],
    features: [
      'Instant BMI Calculation',
      'Health Status Classification',
      'Simple and Clean UI',
      'Save Previous Results',
      'Personal Health Tracking',
    ],
    techStack: [
      'Flutter',
      'Dart',
      'State Management (Cubit)',
      'Local Storage (SharedPreferences)',
      'Clean UI Design',
      'Cross Platform Support (Android & iOS)',
    ],
    sourceCodeUrl: 'https://github.com/ahmadhomsy/bmi_calculator',
    liveDemoUrl: '',
    rating: '',
    downloads: '',
  );
}
