import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:book_store/features/home/presintation/views/widgets/futuredListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListBlocBuilder extends StatefulWidget {
  FeaturedBooksListBlocBuilder({
    super.key,
  });

  @override
  State<FeaturedBooksListBlocBuilder> createState() =>
      _FeaturedBooksListBlocBuilderState();
}

class _FeaturedBooksListBlocBuilderState
    extends State<FeaturedBooksListBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksStates>(
        listener: (context, state) {
      if (state is FeaturedSuccessState) {
        books.addAll(state.books);
      }
    }, builder: (context, state) {
      if (state is FeaturedSuccessState ||
          state is FeaturedLoadingPaginationState ||
          state is FeaturedFailurePaginationState) {
        return FuturedBooksLisView(
          books: books,
        );
      } else if (state is FeaturedFailureState) {
        return Text(state.error.toString());
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
