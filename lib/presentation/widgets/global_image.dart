import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/app_paddings.dart';
import '../../constants/app_path.dart';
import 'global_indicator.dart';

class GlobalImage extends StatelessWidget {
  final String imageUrl;
  const GlobalImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Image.asset(
              AppPath.noImagePath,
              fit: BoxFit.contain,
            ),
        placeholder: (context, url) {
          return Padding(
            padding: AppPaddings.vert50,
            child: const GlobalIndicator(),
          );
        });
  }
}
