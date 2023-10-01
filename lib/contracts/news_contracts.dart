import '../dto/response dto/news_dto.dart';

abstract class NewsContracts {
  Future<NewsDto> fetchNews();
}
