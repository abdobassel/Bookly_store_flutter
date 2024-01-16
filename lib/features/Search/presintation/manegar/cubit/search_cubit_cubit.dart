import 'package:bloc/bloc.dart';
import 'package:book_store/features/Search/domain/entities.dart/searchEntity.dart';
import 'package:book_store/features/Search/domain/useCasses/search_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchDataUseCase) : super(SearchCubitInitial());
  final SearchDataUseCase searchDataUseCase;

  static SearchCubitCubit get(context) =>
      BlocProvider.of<SearchCubitCubit>(context);

  Future<void> getSearchBooks({required dynamic q}) async {
    emit(SearchLoadingState());
    var books = await searchDataUseCase.call(q);
    books.fold((error) {
      emit(SearchErrorState());
      print(error.message.toString());
    }, (books) {
      emit(SearchSuccessState(booksSearch: books));
      print(books.length);
    });
  }
}
