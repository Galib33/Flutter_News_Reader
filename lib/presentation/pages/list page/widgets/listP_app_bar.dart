import 'package:flutter/material.dart';

import '../../../../constants/app_paddings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/borders/app_round_borders.dart';
import '../../../../constants/colors/app_colors.dart';
import '../../../../constants/texts/app_titles.dart';

class ListPAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ListPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkBlueColor,
      title: Padding(
        padding: AppPaddings.bottom8,
        child: Text(
          AppTitles.articles,
          style: AppTextStyle.whiteBold30,
        ),
      ),
      shape: AppRoundBorders.bottomRadius16,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
