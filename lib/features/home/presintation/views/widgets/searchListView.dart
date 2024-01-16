import 'package:book_store/core/utilis/styles.dart';
import 'package:book_store/features/Search/presintation/manegar/cubit/search_cubit_cubit.dart';
import 'package:book_store/features/home/presintation/views/widgets/ratingRowSellerItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class searchListViewBooks extends StatelessWidget {
  const searchListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubitCubit, SearchCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return ListView.builder(
            itemCount: state.booksSearch.length,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SerchListItem(
                image: state.booksSearch[index].img,
                author: state.booksSearch[index].author,
                bookId: state.booksSearch[index].bookid,
                title: state.booksSearch[index].title,
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class SerchListItem extends StatelessWidget {
  SerchListItem({
    super.key,
    required this.image,
    required this.author,
    required this.bookId,
    required this.title,
  });
  final String image, author, bookId, title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(imageUrl: image)),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    title,
                    style: Styles.textStyle22,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  author,
                  overflow: TextOverflow.ellipsis,
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('مجاااني', style: Styles.textStyle22.copyWith()),
                    Spacer(),
                    RatingItemSeller(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
