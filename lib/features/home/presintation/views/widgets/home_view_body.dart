import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/home/presintation/views/widgets/CustomAppBar.dart';
import 'package:book_store/features/home/presintation/views/widgets/futuredListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          FuturedBooksLisView(),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ))
        ],
      ),
    );
  }
}
