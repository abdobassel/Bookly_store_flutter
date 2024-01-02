import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(
                AssetsData.test,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
