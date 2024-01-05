import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/CustomAppBar.dart';
import 'package:book_store/features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:book_store/features/home/presintation/views/widgets/featuredBooksBlocBuilder.dart';
import 'package:book_store/features/home/presintation/views/widgets/futuredListView.dart';
import 'package:book_store/features/home/presintation/views/widgets/listview_seller.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 20,
                ),
                FeaturedBooksListBlocBuilder(),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Text(
                  'Best Seller',
                  style: Styles.textStyle20,
                )),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: BestSellerListView())
      ],
    );
  }
}
