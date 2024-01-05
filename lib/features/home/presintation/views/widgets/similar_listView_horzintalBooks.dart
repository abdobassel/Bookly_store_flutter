import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';

import 'package:flutter/material.dart';

class SimilarListViewBooksHorzntal extends StatelessWidget {
  const SimilarListViewBooksHorzntal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FeautredListViewItem(
          image: '',
        ),
        itemCount: 10,
      ),
    );
  }
}
