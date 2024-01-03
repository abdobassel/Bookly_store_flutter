import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/Search/presintation/widgets/custom_text_field_search.dart';
import 'package:book_store/features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomSearchField(),
          Text(
            'Search Results',
            style: Styles.textStyle22,
          ),
          Expanded(child: searchListViewBooks())
        ]));
  }
}

class searchListViewBooks extends StatelessWidget {
  const searchListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: BestSellerListItem(),
      ),
    );
  }
}
