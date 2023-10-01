import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../constants/api/endpoints.dart';
import '../../contracts/news_contracts.dart';
import '../../dto/response dto/news_dto.dart';
import '../../helpers/dio_exception.dart';

class NewsDataSource extends NewsContracts {
  final Dio _newsDio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
  final Box<String> _localNewsBox = Hive.box<String>("news");
  final Box<bool> statusBox = Hive.box<bool>("status");

  @override
  Future<NewsDto> fetchNews() async {
    try {
      bool hasConnected = await InternetConnectionChecker().hasConnection;
      bool firstFetch = statusBox.get("firstFetch") ?? false;
      if (!hasConnected && firstFetch) {
        log("not connected");
        NewsDto localNews =
            NewsDto.fromJson(jsonDecode(_localNewsBox.get("cachedNews")!));
        return localNews;
      }
      Response response = await _newsDio.get(Endpoints.teslaNewsUrl);
      NewsDto news = NewsDto.fromJson(response.data);
      await _localNewsBox
          .put("cachedNews", jsonEncode(news))
          .then((value) async => await statusBox.put("firstFetch", true));

      return news;
    } catch (e) {
      if (e.toString().contains("4")) {
        throw ExceptionDio("Unable to load news...");
      } else {
        throw ExceptionDio(
            "Something went wrong. Check your connection and try again a few minutes later.");
      }
    }
  }

  // Future<TeslaNewsDto> fetchNews() async {
  // try {
  //   response = await _newsDio.get(Endpoints.teslaNewsUrl);
  //   TeslaNewsDto news = TeslaNewsDto.fromJson(response!.data);
  //   response = null;
  //   return news;
  // } catch (e) {
  //   if (response!.statusCode.toString().startsWith("4")) {
  //     throw ExceptionDio("Unable to load news...");
  //   } else {
  //     throw ExceptionDio("Please check your connection and try again..");
  //   }
  // }
  // }
}
