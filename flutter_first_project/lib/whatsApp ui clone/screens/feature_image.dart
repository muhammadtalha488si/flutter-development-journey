import 'package:flutter/material.dart';

class FeatureImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;

  const FeatureImage({
    super.key,
    required this.path,
    this.width = 56,
    this.height = 56,
    this.radius = 14,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, __, ___) => Container(
          width: width,
          height: height,
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: const Icon(Icons.image_not_supported_outlined,
              color: Colors.grey),
        ),
      ),
    );
  }
}
