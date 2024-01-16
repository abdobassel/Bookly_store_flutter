import 'package:book_store/components.dart';

import 'package:book_store/features/Search/presintation/manegar/cubit/search_cubit_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubitCubit, SearchCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: DefaultTextForm(
              onchange: (value) {
                SearchCubitCubit.get(context).getSearchBooks(q: value);
              },
              controller: searchController,
              labeltext: 'Search...',
              type: TextInputType.text,
              suffixIcon: Icons.search,
            ),
          );
        });
  }
}
