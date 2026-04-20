import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/helpers/go_router_helper.dart';
import 'package:portfolio_flutter/core/theme/app_theme.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ahmad Alhomsy | Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme(),
      routerConfig: router,
    );
  }
}
