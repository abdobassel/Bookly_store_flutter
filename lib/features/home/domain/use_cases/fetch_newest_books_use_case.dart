import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/core/use_cases/use_case.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewsedBooks();
  }
}
