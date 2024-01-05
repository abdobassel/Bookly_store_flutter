import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class NewsetBooksStates {}

class NewsetInitialState extends NewsetBooksStates {}

class NewsetLoadingState extends NewsetBooksStates {}

class NewsetSuccessState extends NewsetBooksStates {
  final List<BookEntity> books;

  NewsetSuccessState(this.books);
}

class NewsetFailureState extends NewsetBooksStates {
  final String error;

  NewsetFailureState(this.error);
}
