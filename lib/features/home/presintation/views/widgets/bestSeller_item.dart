import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/ratingRowSellerItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage(
                        AssetsData.test,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
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
                      'Hary Potter HEllo  HleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeo',
                      style: Styles.textStyle22,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Hary Potter',
                    style: Styles.textStyle16,
                  ),
                  Row(
                    children: [
                      Text('19' r'$',
                          style: Styles.textStyle22
                              .copyWith(fontWeight: FontWeight.bold)),
                      Spacer(),
                      RatingItemSeller(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
