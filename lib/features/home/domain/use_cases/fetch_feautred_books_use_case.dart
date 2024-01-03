import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeautredBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchFeautredBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchFeautredBooks();
  }
}

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}
/*
  FetchFeautredBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchFeautredBooks();
  }
   */