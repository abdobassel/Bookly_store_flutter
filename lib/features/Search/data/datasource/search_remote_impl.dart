import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/Search/data/datasource/search_repo_remote.dart';
import 'package:book_store/features/Search/data/models/search_model/search_model.dart';
import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<SearchEntity>> fetchSearchData({dynamic q}) async {
    var data = await apiService.getData(endPoint: 'volumes?q=$q');

    List<SearchEntity> books = getBooksSearch(data);
    print(books.length);
    return books;
  }

  List<SearchEntity> getBooksSearch(Map<String, dynamic> data) {
    List<SearchEntity> books = [];

    for (var book in data['items']) {
      books.add(SearchModel.fromJson(book));
      print(books.length);
    }
    return books;
  }
}
