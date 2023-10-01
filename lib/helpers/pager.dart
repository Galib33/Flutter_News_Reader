import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/news/news_cubit.dart';
import '../presentation/pages/detail%20page/detail_page.dart';
import '../presentation/pages/list%20page/list_page.dart';

class Pager {
  Pager._();

  static Widget get listPage => BlocProvider(
        create: (context) => NewsCubit()..fetchNews(),
        child: const ListPage(),
      );
  static Widget get detailPage => const DetailPage();
}
