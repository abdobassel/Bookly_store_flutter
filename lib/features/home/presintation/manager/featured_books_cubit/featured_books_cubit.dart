import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/use_cases/fetch_feautred_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(
    this.feautredBooksUseCase,
  ) : super(FeaturedInitialState());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  final FetchFeautredBooksUseCase feautredBooksUseCase;
  BookEntity? book;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    emit(FeaturedLoadingState());

    var result = await feautredBooksUseCase.call(pageNumber);
    result.fold((failure) {
      emit(FeaturedFailureState(failure.toString()));
    }, (books) {
      emit(FeaturedSuccessState(
        books,
      ));
    });
  }
}
