part of 'search_cubit_cubit.dart';

@immutable
sealed class SearchCubitState {}

final class SearchCubitInitial extends SearchCubitState {}

class SearchLoadingState extends SearchCubitState {}

class SearchSuccessState extends SearchCubitState {
  final List<SearchEntity> booksSearch;

  SearchSuccessState({required this.booksSearch});
}

class SearchErrorState extends SearchCubitState {}
