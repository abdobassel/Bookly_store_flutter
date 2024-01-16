import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/core/use_cases/use_case.dart';
import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';
import 'package:book_store/features/Search/domain/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchDataUseCase extends UseCase<List<SearchEntity>, dynamic> {
  final SearchRepo searchRepo;

  SearchDataUseCase(this.searchRepo);

  @override
  Future<Either<Failure, List<SearchEntity>>> call([dynamic param]) async {
    return await searchRepo.fetchSearchData(q: param);
  }
}
//url = 'https://www.googleapis.com/books/v1/volumes?q=egypt'