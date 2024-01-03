import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeautredBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeautredBooksUseCase({required this.homeRepo});

  Future<Either<Failure, List<BookEntity>>> fetchFeautredBooks() {
    return homeRepo.fetchFeautredBooks();
  }
}
