import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_state.dart';
import 'package:book_store/features/home/presintation/views/widgets/listview_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewstBooksLisBlocBuilder extends StatelessWidget {
  const NewstBooksLisBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksStates>(
        builder: (context, state) {
      if (state is NewsetSuccessState) {
        return BestSellerListView();
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
