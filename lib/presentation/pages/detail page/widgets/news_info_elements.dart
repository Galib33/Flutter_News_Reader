import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_text_style.dart';
import '../../../../cubits/news/news_cubit.dart';
import '../../detail%20page/widgets/fav_and_share.dart';
import 'date_time_info.dart';

class NewsInfoElements extends StatelessWidget {
  const NewsInfoElements({super.key});

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = context.read<NewsCubit>();

    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthorInfo(),
              Spacer(),
              FavAndShare()
            ],
          ),
          20.verticalSpace,
          Text(
            cubit.newsDetail.title!,
            style: AppTextStyle.bold25Black,
          ),
          10.verticalSpace,
          Text(
            cubit.newsDetail.content!,
            style: AppTextStyle.lightGrey20,
          ),
        ],
      ),
    );
  }
}
