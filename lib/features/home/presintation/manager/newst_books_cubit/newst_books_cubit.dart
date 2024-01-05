import 'package:book_store/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksStates> {
  NewsetBooksCubit(this.newestBooksUseCase) : super(NewsetInitialState());
  final FetchNewestBooksUseCase newestBooksUseCase;
  Future<void> fetchNewsetBooks() async {
    emit(NewsetLoadingState());

    var result = await newestBooksUseCase.call();
    result.fold((failure) {
      emit(NewsetFailureState(failure.toString()));
      print(failure.message.toString());
    }, (books) {
      emit(NewsetSuccessState(books));
    });
  }
}
