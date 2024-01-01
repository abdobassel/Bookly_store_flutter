import 'package:book_store/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class FeautredListViewItem extends StatelessWidget {
  const FeautredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(
                    AssetsData.test,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
