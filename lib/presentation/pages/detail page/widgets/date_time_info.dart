import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_path.dart';

import '../../../../constants/app_text_style.dart';
import '../../../../cubits/news/news_cubit.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = context.read<NewsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            AppPath.profilePicturePath,
          ),
        ),
        10.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cubit.newsDetail.author!),
            5.horizontalSpace,
            Text(
              cubit.newsDetail.date!,
              style: AppTextStyle.lightGreyText,
            )
          ],
        ),
      ],
    );
  }
}
