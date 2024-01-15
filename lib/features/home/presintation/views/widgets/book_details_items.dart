import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsItems extends StatelessWidget {
  const BookDetailsItems({
    super.key,
    required this.bookEntity,
  });
  final BookEntity bookEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedSuccessState)
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                bookEntity.title,
                style: Styles.textStyle30,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                bookEntity.authorName!,
                style: Styles.textStyle20.copyWith(
                  color: Colors.grey[400],
                  fontFamily: KGtSectraFineFontFamily,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${''}',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '(2552)',
                    style: Styles.textStyle16,
                  ),
                ],
              )
            ],
          );
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
