import 'package:get_it/get_it.dart';
import 'datasources/web/news_data_source.dart';

final single = GetIt.instance;

void setup() {
  single.registerLazySingleton(() => NewsDataSource());
}
