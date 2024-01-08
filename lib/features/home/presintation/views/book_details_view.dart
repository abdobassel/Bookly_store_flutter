import 'package:book_store/constants.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 20),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            )
          ],
        ),
        body: BookDeatailsViewBody());
  }
}
