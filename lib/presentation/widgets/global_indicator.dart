import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';

class GlobalIndicator extends StatelessWidget {
  const GlobalIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator.adaptive(
      backgroundColor: AppColors.darkBlueColor,
    ));
  }
}
