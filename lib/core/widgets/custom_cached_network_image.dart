import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,

        placeholder: (BuildContext context, String url) {
          return placeholder ??
              SizedBox(
                width: width,
                height: height,
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
        },

        errorWidget: (BuildContext context, String url, Object error) {
          return errorWidget ??
              Container(
                width: width,
                height: height,
                alignment: Alignment.center,
                color: Colors.grey.shade200,
                child: const Icon(Icons.broken_image_outlined),
              );
        },
      ),
    );
  }
}
