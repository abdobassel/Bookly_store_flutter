import 'package:book_store/features/Search/presintation/widgets/custom_text_field_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [CustomSearchField()]));
  }
}
