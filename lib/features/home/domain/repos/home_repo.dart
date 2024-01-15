import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // what is will happening in home feautre ..
  Future<Either<Failure, List<BookEntity>>> fetchFeautredBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchNewsedBooks({int pageNum = 0});
}
