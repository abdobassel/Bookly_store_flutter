import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presintation/views/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

class FuturedBooksLisView extends StatefulWidget {
  const FuturedBooksLisView({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<BookEntity> books;

  @override
  _FuturedBooksLisViewState createState() => _FuturedBooksLisViewState();
}

class _FuturedBooksLisViewState extends State<FuturedBooksLisView> {
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
    if (currentPosition >= 0.7 * maxPosition) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: page++);
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
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                GoRouter.of(context).push('${AppRouter.KBookDetailsView}',
                    extra: widget.books[index]);
              },
              child:
                  FeautredListViewItem(image: widget.books[index].image ?? ''));
        },

        itemCount: widget.books.length, // Add 1 for the loading indicator
        controller: _scrollController,
      ),
    );
  }
}
