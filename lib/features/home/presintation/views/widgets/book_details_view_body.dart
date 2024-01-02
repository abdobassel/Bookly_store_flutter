import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/book_details_items.dart';
import 'package:book_store/features/home/presintation/views/widgets/books_actions.dart';
import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:book_store/features/home/presintation/views/widgets/custom_image_item.dart';
import 'package:book_store/features/home/presintation/views/widgets/ratingRowSellerItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print(width);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: CustomImageItem(),
          ),
          SizedBox(
            height: 30,
          ),
          BookDetailsItems(),
          SizedBox(
            height: 20,
          ),
          BooksAction(),
        ],
      ),
    );
  }
}
