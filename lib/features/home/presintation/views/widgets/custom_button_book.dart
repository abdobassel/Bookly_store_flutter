import 'package:book_store/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backColor,
      this.borderRadius,
      this.fontSize});
  final String text;
  final double? fontSize;
  final Color textColor;
  final Color backColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          )),
    );
  }
}
