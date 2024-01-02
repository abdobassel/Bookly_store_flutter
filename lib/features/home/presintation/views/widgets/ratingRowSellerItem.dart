import 'package:book_store/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItemSeller extends StatelessWidget {
  const RatingItemSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.6',
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(2552)',
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
