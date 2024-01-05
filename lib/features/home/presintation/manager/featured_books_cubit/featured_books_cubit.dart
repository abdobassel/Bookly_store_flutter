import 'package:book_store/features/home/domain/use_cases/fetch_feautred_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.feautredBooksUseCase) : super(FeaturedInitialState());
  final FetchFeautredBooksUseCase feautredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedLoadingState());

    var result = await feautredBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedFailureState(failure.toString()));
    }, (books) {
      emit(FeaturedSuccessState(books));
    });
  }
}
