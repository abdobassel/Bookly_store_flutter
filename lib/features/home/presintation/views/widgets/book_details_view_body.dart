import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/book_details_items.dart';
import 'package:book_store/features/home/presintation/views/widgets/books_actions.dart';
import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:book_store/features/home/presintation/views/widgets/custom_image_item.dart';
import 'package:book_store/features/home/presintation/views/widgets/ratingRowSellerItem.dart';
import 'package:book_store/features/home/presintation/views/widgets/similar_listView_horzintalBooks.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print(width);
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .18),
                  child: CustomImageItem(),
                ),
                const SizedBox(
                  height: 30,
                ),
                BookDetailsItems(),
                const SizedBox(
                  height: 20,
                ),
                BooksAction(),
                Expanded(
                  child: const SizedBox(
                    height: 40,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You Can Also Any ...',
                    style: Styles.textStyle18
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SimilarListViewBooksHorzntal(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
