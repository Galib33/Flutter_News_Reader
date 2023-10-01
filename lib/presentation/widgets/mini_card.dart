import 'package:flutter/material.dart';

import '../../constants/app_paddings.dart';
import '../../constants/borders/app_round_borders.dart';
import '../../constants/colors/app_colors.dart';

class MiniCard extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  const MiniCard(
      {super.key, required this.iconData, this.color = AppColors.blackColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.listBackgroundColor,
      shape: AppRoundBorders.miniRadius5,
      child: Padding(
        padding: AppPaddings.all5,
        child: Icon(
          iconData,
          size: 27,
          color: color,
        ),
      ),
    );
  }
}
