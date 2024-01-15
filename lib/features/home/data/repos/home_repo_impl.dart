import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeLocalDataSource, this.homeRemoteDataSource);
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeautredBooks(
      {int pageNumber = 0}) async {
    try {
      List<BookEntity> books;
      books =
          await homeLocalDataSource.fetchFeautredBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books =
          await homeRemoteDataSource.fetchFeautredBooks(pageNumber: pageNumber);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsedBooks(
      {int pageNum = 0}) async {
    try {
      List<BookEntity> books;
      books = await homeLocalDataSource.fetchNewsedBooks(pageNum: pageNum);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewsedBooks(pageNum: pageNum);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
