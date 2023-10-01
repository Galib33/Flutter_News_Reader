import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_border_radiuses.dart';
import '../../../../constants/colors/app_colors.dart';
import '../../../widgets/global_image.dart';
import '../../../widgets/mini_card.dart';

class ListItemImage extends StatelessWidget {
  final String articleImage;
  const ListItemImage({
    super.key,
    required this.articleImage,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: AppColors.lightGreyColor,
      elevation: 7,
      borderRadius: AppBorderRadiuses.c12,
      child: ClipRRect(
          borderRadius: AppBorderRadiuses.c12,
          child: Stack(children: [
            GlobalImage(imageUrl: articleImage),
            Positioned(
              top: 1.h,
              right: 5.w,
              child: const Row(
                children: [
                  MiniCard(iconData: Icons.favorite_border_rounded),
                  MiniCard(iconData: Icons.share_outlined)
                ],
              ),
            )
          ])),
    );
  }
}
