import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveHiveBooks(List<BookEntity> books, String nameBox) {
  var box = Hive.box<BookEntity>(nameBox);
  box.addAll(books);
}
