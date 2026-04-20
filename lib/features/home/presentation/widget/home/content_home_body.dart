import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';
import 'package:portfolio_flutter/features/home/cubit/navigation_cubit.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/about/about_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/contact/contact_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/education/education_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/experience/experience_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/footer/footer.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/hero/hero_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/project/projects_section.dart';
import 'package:portfolio_flutter/features/home/presentation/widget/skills/skills_section.dart';

class ContentHomeBody extends StatelessWidget {
  const ContentHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return SingleChildScrollView(
      controller: navCubit.scrollController,
      child: Column(
        children: [
          HeroSection(key: navCubit.sectionKeys[NavSection.home]),
          AboutSection(key: navCubit.sectionKeys[NavSection.about]),
          ProjectsSection(key: navCubit.sectionKeys[NavSection.projects]),
          ExperienceSection(key: navCubit.sectionKeys[NavSection.experience]),
          EducationSection(key: navCubit.sectionKeys[NavSection.education]),
          SkillsSection(key: navCubit.sectionKeys[NavSection.skills]),
          ContactSection(key: navCubit.sectionKeys[NavSection.contact]),
          const Footer(),
        ],
      ),
    );
  }
}
