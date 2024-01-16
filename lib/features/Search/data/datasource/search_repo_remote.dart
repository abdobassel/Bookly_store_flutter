import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';

abstract class SearchRemoteDataSource {
  Future<List<SearchEntity>> fetchSearchData({dynamic q});
}
