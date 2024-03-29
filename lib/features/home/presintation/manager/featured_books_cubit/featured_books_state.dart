import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FeaturedBooksStates {}

class FeaturedInitialState extends FeaturedBooksStates {}

class FeaturedLoadingState extends FeaturedBooksStates {}

class FeaturedLoadingPaginationState extends FeaturedBooksStates {}

class FeaturedFailurePaginationState extends FeaturedBooksStates {
  final String error;

  FeaturedFailurePaginationState(this.error);
}

class FeaturedSuccessState extends FeaturedBooksStates {
  final List<BookEntity> books;

  FeaturedSuccessState(this.books);
}

class FeaturedFailureState extends FeaturedBooksStates {
  final String error;

  FeaturedFailureState(this.error);
}
