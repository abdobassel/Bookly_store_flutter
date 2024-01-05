import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    HomeLocalDataSourceImpl(),
    HomeRemoteDataSourceImpl(ApiService()),
  ));
}
