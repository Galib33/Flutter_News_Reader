import '../app_keys.dart';

class Endpoints {
  Endpoints._();
  static const String baseUrl = "https://newsapi.org/";

  static const String teslaNewsUrl =
      "v2/everything?q=tesla&sortBy=publishedAt&apiKey=${AppKeys.apiKey}";
}
