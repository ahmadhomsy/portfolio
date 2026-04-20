import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/core/enums/nav_section.dart';

class NavigationCubit extends Cubit<NavSection> {
  NavigationCubit() : super(NavSection.home) {
    scrollController.addListener(_onScroll);
  }

  final ScrollController scrollController = ScrollController();

  final Map<NavSection, GlobalKey> sectionKeys = {
    NavSection.home: GlobalKey(),
    NavSection.about: GlobalKey(),
    NavSection.projects: GlobalKey(),
    NavSection.experience: GlobalKey(),
    NavSection.education: GlobalKey(),
    NavSection.skills: GlobalKey(),
    NavSection.contact: GlobalKey(),
  };

  void _onScroll() {
    NavSection? newlyActiveSection;
    for (final entry in sectionKeys.entries) {
      final context = entry.value.currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          final offset = box.localToGlobal(Offset.zero).dy;
          if (offset <= 200 && offset >= -box.size.height + 200) {
            newlyActiveSection = entry.key;
          }
        }
      }
    }
    if (newlyActiveSection != null && newlyActiveSection != state) {
      emit(newlyActiveSection);
    }
  }

  Future<void> scrollTo(NavSection section) async {
    final key = sectionKeys[section];
    final context = key?.currentContext;

    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Future<void> close() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
    return super.close();
  }
}
