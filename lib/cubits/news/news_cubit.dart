import 'package:flutter_bloc/flutter_bloc.dart';

import '../../datasources/web/news_data_source.dart';
import '../../dto/response dto/news_dto.dart';
import '../../models/detail_model.dart';
import '../../single.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  Map<String, String> currentArticle = {};
  DetailModel newsDetail = DetailModel();

  fetchNews() async {
    try {
      emit(NewsLoading());
      NewsDto news = await single.get<NewsDataSource>().fetchNews();
      emit(NewsSuccess(teslaNews: news));
    } catch (e) {
      emit(NewsError(errorMessage: e.toString()));
    }
  }
}
