
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/texts/app_texts.dart';
import '../../../../cubits/news/news_cubit.dart';
import '../../../../dto/response dto/news_dto.dart';
import '../../detail%20page/detail_page.dart';

import '../../../../constants/app_paddings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../helpers/go.dart';
import '../../../../theme/box_decorations.dart';
import 'list_item_image.dart';

class ListViewItem extends StatelessWidget {
  final Articles article;
  const ListViewItem({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = context.read<NewsCubit>();
    return GestureDetector(
      onTap: () {
        setDetails(cubit);
        Go.push(context, const DetailPage());
      },
      child: Container(
        margin: AppPaddings.all8,
        padding: AppPaddings.all8,
        decoration: BoxDecorations.listItemDecor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: AppPaddings.all6,
                child: ListItemImage(
                  articleImage: article.urlToImage!,
                ),
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: AppPaddings.horz5,
              child: Column(
                children: [
                  Text(
                    "${article.title}",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.bold20,
                  ),
                  5.verticalSpace,
                  Text(
                    "${article.description}",
                    style: AppTextStyle.lightGreyText,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void setDetails(NewsCubit cubit) {
    cubit.newsDetail.author = article.author!.length > 26
        ? article.author!.substring(0, 26)
        : article.author!;
    cubit.newsDetail.title = article.title;
    cubit.newsDetail.content = article.content;
    cubit.newsDetail.date = article.publishedAt == null
        ? AppTexts.noDate
        : "${article.publishedAt?.substring(0, 10)}·${article.publishedAt?.substring(12, 16)}";
    cubit.newsDetail.image = article.urlToImage;
  }
}
