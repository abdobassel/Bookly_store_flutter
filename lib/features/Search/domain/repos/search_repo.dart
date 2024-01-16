import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchEntity>>> fetchSearchData({dynamic q});
}
