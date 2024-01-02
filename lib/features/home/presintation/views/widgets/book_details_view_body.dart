import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:book_store/features/home/presintation/views/widgets/custom_image_item.dart';
import 'package:flutter/material.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print(width);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: CustomImageItem(),
          ),
        ],
      ),
    );
  }
}
