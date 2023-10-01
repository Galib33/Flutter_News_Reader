import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/app_colors.dart';
import '../../../../cubits/news/news_cubit.dart';
import '../../../../helpers/go.dart';
import '../../../widgets/global_image.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = context.read<NewsCubit>();
    return SizedBox(
      height: 400.h,
      width: 1.sw,
      child: Stack(children: [
        Positioned.fill(child: GlobalImage(imageUrl: cubit.newsDetail.image!)),
        Positioned(
            top: 40.h,
            left: 5.w,
            child: IconButton(
              onPressed: () {
                Go.back(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: AppColors.redColor,
              ),
            ))
      ]),
    );
  }
}
