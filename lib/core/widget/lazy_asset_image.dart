import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/app_colors.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// A reusable widget that defers loading of asset images until they become
/// visible or approach the viewport.
class LazyAssetImage extends StatefulWidget {
  const LazyAssetImage({
    required this.imagePath,
    super.key,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.borderRadius,
    this.errorBuilder,
    this.placeholderBuilder,
    this.placeholderColor,
    this.excludeFromSemantics = false,
    this.semanticLabel,
  });

  /// The asset path of the image.
  final String imagePath;

  /// The allocated width for the image and its placeholder.
  final double? width;

  /// The allocated height for the image and its placeholder.
  final double? height;

  /// How the image should be inscribed into the box.
  final BoxFit? fit;

  /// How to align the image within its bounds.
  final AlignmentGeometry alignment;

  /// Optional border radius to clip the placeholder and loaded image.
  final BorderRadiusGeometry? borderRadius;

  /// Builder function called if image loading fails.
  final ImageErrorWidgetBuilder? errorBuilder;

  /// Optional custom builder for the placeholder widget.
  final WidgetBuilder? placeholderBuilder;

  /// Background color for the default lightweight placeholder.
  final Color? placeholderColor;

  /// Whether to exclude this image from the semantics tree.
  final bool excludeFromSemantics;

  /// A semantic description of the image.
  final String? semanticLabel;

  @override
  State<LazyAssetImage> createState() => _LazyAssetImageState();
}

class _LazyAssetImageState extends State<LazyAssetImage> {
  bool _isVisible = false;
  late Key _detectorKey;

  @override
  void initState() {
    super.initState();
    _detectorKey = _buildDetectorKey();
  }

  @override
  void didUpdateWidget(LazyAssetImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imagePath != widget.imagePath) {
      _isVisible = false;
      _detectorKey = _buildDetectorKey();
    }
  }

  Key _buildDetectorKey() {
    if (widget.key != null) {
      return Key('lazy_detector_${widget.key}_${widget.imagePath}');
    }
    return Key('lazy_detector_${widget.imagePath}_${identityHashCode(this)}');
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (_isVisible || !mounted) {
      return;
    }
    if (info.visibleFraction > 0) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  Widget _defaultErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return ColoredBox(
      color: widget.placeholderColor ?? AppColors.darkSlate,
      child: Center(
        child: Icon(
          Icons.broken_image_outlined,
          color: AppColors.coolGrey,
          size: (widget.height != null && widget.height! < 48) ? 16 : 24,
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    if (widget.placeholderBuilder != null) {
      return widget.placeholderBuilder!(context);
    }
    return ColoredBox(
      color: widget.placeholderColor ?? AppColors.darkSlate,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (_isVisible) {
      content = Image.asset(
        widget.imagePath,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        alignment: widget.alignment,
        errorBuilder: widget.errorBuilder ?? _defaultErrorBuilder,
        excludeFromSemantics: widget.excludeFromSemantics,
        semanticLabel: widget.semanticLabel,
      );
    } else {
      content = _buildPlaceholder();
    }

    if (widget.borderRadius != null) {
      content = ClipRRect(
        borderRadius: widget.borderRadius!,
        child: content,
      );
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: VisibilityDetector(
        key: _detectorKey,
        onVisibilityChanged: _isVisible ? null : _onVisibilityChanged,
        child: content,
      ),
    );
  }
}
