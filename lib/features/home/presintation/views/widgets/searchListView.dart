import 'package:book_store/features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:flutter/material.dart';

class searchListViewBooks extends StatelessWidget {
  const searchListViewBooks({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: BestSellerListItem(
          image: '',
          author: '22222',
          bookId: '1',
          title: '1111',
        ),
      ),
    );
  }
}
