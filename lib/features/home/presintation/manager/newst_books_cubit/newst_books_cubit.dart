import 'package:book_store/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksStates> {
  NewsetBooksCubit(this.newestBooksUseCase) : super(NewsetInitialState());
  final FetchNewestBooksUseCase newestBooksUseCase;
  Future<void> fetchNewsetBooks({int pageNum = 0}) async {
    if (pageNum == 0) {
      emit(NewsetLoadingState());
    } else {
      emit(NewsetLoadingPaginationState());
    }

    var result = await newestBooksUseCase.call();
    result.fold((failure) {
      if (pageNum == 0) {
        emit(NewsetFailureState(failure.toString()));
        print(failure.message.toString());
      } else {
        emit(NewsetFailurePaginationState(failure.message.toString()));
        print(failure.message.toString());
      }
    }, (books) {
      emit(NewsetSuccessState(books));
    });
  }
}
