import 'package:book_store/constants.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeautredBooks({int pageNumber = 0});
  List<BookEntity> fetchNewsedBooks({int pageNum = 0});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeautredBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(KFeaturedBox);
    int lenght = box.values.length;
    if (startIndex >= lenght || endIndex > lenght) {
      return [];
    }

    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewsedBooks({int pageNum = 0}) {
    int startIndex = pageNum * 10;
    int endIndex = (pageNum + 1) * 10;
    var box = Hive.box<BookEntity>(KNewestBox);
    int lenght = box.values.length;
    if (startIndex >= lenght || endIndex > lenght) {
      return [];
    }

    return box.values.toList().sublist(startIndex, endIndex);
  }
}
