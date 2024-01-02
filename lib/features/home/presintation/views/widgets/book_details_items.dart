import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsItems extends StatelessWidget {
  const BookDetailsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Free Palestine ',
            style: Styles.textStyle30,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Abderahman Bassel',
            style: Styles.textStyle20.copyWith(
              color: Colors.grey[400],
              fontFamily: KGtSectraFineFontFamily,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '4.6',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '(2552)',
                style: Styles.textStyle16,
              ),
            ],
          )
        ],
      ),
    );
  }
}
