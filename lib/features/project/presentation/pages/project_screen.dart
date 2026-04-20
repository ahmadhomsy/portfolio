import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/helpers/responsive.dart';
import 'package:portfolio_flutter/core/theme/app_theme.dart';
import 'package:portfolio_flutter/features/project/data/project_model.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/layout/project_desktop_layout.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/layout/project_mobile_layout.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({required this.project, super.key});

  final ProjectModel project;

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late final ScrollController _projectScrollController;

  @override
  void initState() {
    super.initState();
    _projectScrollController = ScrollController();
  }

  @override
  void dispose() {
    _projectScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = Responsive.isDesktop(screenWidth);

    return Container(
      decoration: AppTheme.mainBackgroundGradient,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SelectionArea(
          child: Expanded(
            child: Scrollbar(
              controller: _projectScrollController,
              thumbVisibility: isDesktop,
              child: SingleChildScrollView(
                controller: _projectScrollController,
                child: isDesktop
                    ? ProjectDesktopLayout(
                        project: widget.project,
                      )
                    : ProjectMobileLayout(
                        project: widget.project,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
