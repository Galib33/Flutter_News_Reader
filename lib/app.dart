import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme/theme_datas.dart';

import 'constants/texts/app_titles.dart';
import 'cubits/news/news_cubit.dart';
import 'presentation/pages/list page/list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => NewsCubit()..fetchNews(),
        child: MaterialApp(
          title: AppTitles.newsApp,
          debugShowCheckedModeBanner: false,
          theme: ThemeDatas.generalAppTheme,
          home: const ListPage(),
        ),
      ),
    );
  }
}
