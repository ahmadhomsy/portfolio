import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:portfolio_flutter/core/theme/app_text_styles.dart';
import 'package:portfolio_flutter/features/home/cubit/hover_cubit.dart';

class SkillList extends StatelessWidget {
  const SkillList({
    required this.skills,
    super.key,
  });

  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skills.asMap().entries.map((entry) {
        final index = entry.key;
        final skill = entry.value;
        return BlocProvider(
          create: (context) => HoverCubit(),
          child: BlocBuilder<HoverCubit, bool>(
            builder: (context, isHovered) {
              return MouseRegion(
                onEnter: (_) => context.read<HoverCubit>().hoverEnter(),
                onExit: (_) => context.read<HoverCubit>().hoverExit(),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.darkSlate,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.pickledBlueWood,
                    ),
                  ),
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: isHovered
                        ? AppTextStyles.poppins14white
                        : AppTextStyles.poppins14grey400,
                    child: Text(skill),
                  ),
                ),
              );
            },
          ),
        )
            .animate(delay: (index * 50).ms)
            .fade(duration: 500.ms)
            .scale(duration: 500.ms);
      }).toList(),
    );
  }
}
