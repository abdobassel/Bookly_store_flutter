import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_state.dart';
import 'package:book_store/features/home/presintation/views/widgets/listview_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewstBooksLisBlocBuilder extends StatefulWidget {
  const NewstBooksLisBlocBuilder({
    super.key,
  });

  @override
  State<NewstBooksLisBlocBuilder> createState() =>
      _NewstBooksLisBlocBuilderState();
}

class _NewstBooksLisBlocBuilderState extends State<NewstBooksLisBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsetBooksCubit, NewsetBooksStates>(
        listener: (context, state) {
      if (state is NewsetSuccessState) {
        books.addAll(state.books);
      }
    }, builder: (context, state) {
      if (state is NewsetSuccessState ||
          state is NewsetLoadingPaginationState ||
          state is NewsetFailurePaginationState) {
        return BestSellerListView(
          books: books,
        );
      } else if (state is NewsetFailureState) {
        return Text(state.error.toString());
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
