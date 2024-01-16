import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/Search/data/datasource/search_repo_remote.dart';
import 'package:book_store/features/Search/data/models/search_model/search_model.dart';
import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';
import 'package:book_store/features/Search/domain/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepoImpl(this.searchRemoteDataSource);

  @override
  Future<Either<Failure, List<SearchEntity>>> fetchSearchData({q}) async {
    try {
      List<SearchEntity> books;

      books = await searchRemoteDataSource.fetchSearchData(q: q);
      if (books.isNotEmpty) {
        return right(books);
      } else {
        return right([]);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
