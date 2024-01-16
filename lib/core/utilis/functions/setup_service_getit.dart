import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/Search/data/datasource/search_remote_impl.dart';
import 'package:book_store/features/Search/data/datasource/search_repo_remote.dart';
import 'package:book_store/features/Search/data/repos/searchrepoimpl.dart';
import 'package:book_store/features/Search/domain/repos/search_repo.dart';
import 'package:book_store/features/Search/domain/useCasses/search_use_case.dart';
import 'package:book_store/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    HomeLocalDataSourceImpl(),
    HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
  ));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(SearchRemoteDataSourceImpl(getIt.get<ApiService>())));
}
