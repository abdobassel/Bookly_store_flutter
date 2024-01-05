import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeLocalDataSource, this.homeRemoteDataSource);
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeautredBooks() async {
    try {
      List<BookEntity> books;
      books = await homeLocalDataSource.fetchFeautredBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeautredBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsedBooks() async {
    try {
      List<BookEntity> books;
      books = await homeLocalDataSource.fetchNewsedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewsedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
