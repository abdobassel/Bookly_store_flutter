import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:book_store/features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late final ScrollController _scrollController;
// Initial page
  int page = 1;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxPosition = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.3 * maxPosition) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<NewsetBooksCubit>(context)
            .fetchNewsetBooks(pageNum: page++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.books.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                GoRouter.of(context).push('${AppRouter.KBookDetailsView}',
                    extra: widget.books[index]);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: BestSellerListItem(
                  image: widget.books[index].image ?? '',
                  title: widget.books[index].title,
                  author: widget.books[index].authorName!,
                  bookId: widget.books[index].bookId,
                ),
              ),
            ));
  }
}
