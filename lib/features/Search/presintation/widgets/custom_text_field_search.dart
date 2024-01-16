import 'package:book_store/components.dart';
import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/core/utilis/functions/setup_service_getit.dart';
import 'package:book_store/features/Search/data/datasource/search_remote_impl.dart';
import 'package:book_store/features/Search/data/datasource/search_repo_remote.dart';
import 'package:book_store/features/Search/data/repos/searchrepoimpl.dart';
import 'package:book_store/features/Search/domain/repos/search_repo.dart';
import 'package:book_store/features/Search/domain/useCasses/search_use_case.dart';
import 'package:book_store/features/Search/presintation/manegar/cubit/search_cubit_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            SearchCubitCubit(SearchDataUseCase(getIt.get<SearchRepoImpl>())),
        child: BlocConsumer<SearchCubitCubit, SearchCubitState>(
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
            }));
  }
}
