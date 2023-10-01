import 'package:flutter/material.dart';

import '../../../../constants/app_paddings.dart';
import '../../../../theme/box_decorations.dart';
import 'news_info_elements.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppPaddings.all11,
        decoration: BoxDecorations.detailContainerDecor,
        child: const NewsInfoElements());
  }
}
