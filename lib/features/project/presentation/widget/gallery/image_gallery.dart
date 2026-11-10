import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_flutter/core/widget/lazy_asset_image.dart';
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
          (image) => RepaintBoundary(
            child: LazyAssetImage(
              key: ValueKey('gallery_$image'),
              imagePath: image,
              width: 280,
              height: 620,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(10),
            ).animate().fadeIn(duration: 500.ms).slideY(),
          ),
        ),
      ],
    );
  }
}
