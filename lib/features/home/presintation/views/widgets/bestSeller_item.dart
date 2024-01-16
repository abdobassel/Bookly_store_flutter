import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/ratingRowSellerItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
    required this.image,
    required this.author,
    required this.title,
    required this.bookId,
  });
  final String image;
  final String author;
  final String title;
  final String bookId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(imageUrl: image)),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    title,
                    style: Styles.textStyle22,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  author,
                  maxLines: 1,
                  style: Styles.textStyle16,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('free NoMoney',
                          style: Styles.textStyle22
                              .copyWith(fontWeight: FontWeight.bold)),
                      Spacer(),
                      RatingItemSeller(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
