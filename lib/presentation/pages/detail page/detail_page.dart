import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../detail%20page/widgets/detail_container.dart';
import '../detail%20page/widgets/detail_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
         const Align(alignment: Alignment.topCenter, child: DetailImage()),
        Expanded(
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned.fill(top: -40.h, child: const DetailContainer()),
          ]),
        )
      ]),
    );
  }
}
