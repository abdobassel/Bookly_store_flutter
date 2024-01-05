import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';

class FuturedBooksLisView extends StatelessWidget {
  const FuturedBooksLisView({
    super.key,
    required this.books,
  });
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            FeautredListViewItem(image: books[index].image ?? ''),
        itemCount: 10,
      ),
    );
  }
}
