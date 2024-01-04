import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeautredBooks();
  Future<List<BookEntity>> fetchNewsedBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeautredBooks() async {
    var data = await apiService.getData(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks');

    List<BookEntity> books = getBookList(data);
    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsedBooks() {
    // TODO: implement fetchNewsedBooks
    throw UnimplementedError();
  }
}
