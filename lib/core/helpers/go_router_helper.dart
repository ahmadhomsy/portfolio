import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/core/helpers/page_transitions.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';

import 'package:portfolio_flutter/features/project/data/fake_projects.dart';
import 'package:portfolio_flutter/features/home/presentation/pages/home_screen.dart';
import 'package:portfolio_flutter/features/project/presentation/pages/project_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider(
          create: (context) => NavigationCubit(),
          child: const HomeScreen(),
        ),
        transitionsBuilder: PageTransitions.fadeTransition,
      ),
      routes: [
        GoRoute(
          path: 'project_details/:id',
          name: 'project_details',
          pageBuilder: (context, state) {
            final projectId = state.pathParameters['id'];
            final project = FakeProjects.getById(projectId ?? 'ecommerce');
            return CustomTransitionPage(
              key: state.pageKey,
              child: BlocProvider(
                create: (context) => NavigationCubit(),
                child: ProjectScreen(
                  project: project!,
                ),
              ),
              transitionsBuilder: PageTransitions.fadeTransition,
            );
          },
        ),
      ],
    ),
  ],
);
