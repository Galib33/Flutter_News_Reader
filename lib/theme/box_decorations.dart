import 'package:flutter/material.dart';

import '../constants/app_border_radiuses.dart';
import '../constants/colors/app_colors.dart';

class BoxDecorations {
  BoxDecorations._();

  

 
  static BoxDecoration listItemDecor = BoxDecoration(
      color: AppColors.whiteColor, borderRadius: AppBorderRadiuses.c8);

  static const BoxDecoration detailContainerDecor = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadiusDirectional.vertical(
      top: Radius.circular(16),
    ),
  );
}
