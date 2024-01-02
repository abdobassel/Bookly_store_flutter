import 'package:book_store/features/home/presintation/views/widgets/custom_button_book.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
                text: r'19.8 $',
                textColor: Colors.black,
                backColor: Colors.white)),
        Expanded(
            child: CustomButton(
                text: r'19.8 $',
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                textColor: Colors.white,
                backColor: const Color.fromARGB(255, 207, 71, 71)))
      ],
    );
  }
}
