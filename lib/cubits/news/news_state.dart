part of 'news_cubit.dart';

sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsError extends NewsState {
  final String errorMessage;

  NewsError({required this.errorMessage});
}

final class NewsSuccess extends NewsState {
  final NewsDto teslaNews;

  NewsSuccess({required this.teslaNews});
}
