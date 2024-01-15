import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key, required this.bookEntity});
  final BookEntity bookEntity;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: bookEntity.image!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
