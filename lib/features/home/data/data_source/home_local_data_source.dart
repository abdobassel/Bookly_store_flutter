import 'package:book_store/constants.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeautredBooks();
  List<BookEntity> fetchNewsedBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeautredBooks() {
    var box = Hive.box<BookEntity>(KFeaturedBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsedBooks() {
    var box = Hive.box<BookEntity>(KNewestBox);

    return box.values.toList();
  }
}
