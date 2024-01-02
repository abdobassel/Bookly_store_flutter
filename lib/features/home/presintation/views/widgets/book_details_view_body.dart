import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/styles.dart';
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
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: CustomImageItem(),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Free Palestine ',
                  style: Styles.textStyle30,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Abderahman Bassel',
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
                      '4.6',
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
            ),
          )
        ],
      ),
    );
  }
}
