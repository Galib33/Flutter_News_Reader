import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubits/news/news_cubit.dart';
import '../../widgets/global_indicator.dart';

import '../../../constants/colors/app_colors.dart';
import '../list%20page/widgets/listP_app_bar.dart';
import '../list%20page/widgets/list_view_item.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.listBackgroundColor,
      appBar: const ListPAppBar(),
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return const GlobalIndicator();
          } else if (state is NewsSuccess) {
            return RefreshIndicator.adaptive(
              onRefresh: () => context.read<NewsCubit>().fetchNews(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListViewItem(
                    article: state.teslaNews.articles![index],
                  );
                },
                itemCount: state.teslaNews.articles!.length,
              ),
            );
          } else if (state is NewsError) {
            return Center(
              child: Text(
                state.errorMessage,
                textAlign: TextAlign.center,
                style: AppTextStyle.bold20,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
