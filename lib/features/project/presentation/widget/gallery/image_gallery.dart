import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/features/project/presentation/widget/section_title.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({required this.images, super.key});

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        const SectionTitle(title: 'Gallery'),
        ...images.map(
          (image) => Container(
            width: 280,
            height: 620,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ).animate().fadeIn(duration: 500.ms).slideY(),
        ),
      ],
    );
  }
}
