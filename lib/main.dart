import 'package:book_store/apiDio/apidio.dart';
import 'package:book_store/bloc_observer.dart';
import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/functions/setup_service_getit.dart';
import 'package:book_store/features/Search/data/repos/searchrepoimpl.dart';
import 'package:book_store/features/Search/domain/useCasses/search_use_case.dart';
import 'package:book_store/features/Search/presintation/manegar/cubit/search_cubit_cubit.dart';

import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/use_cases/fetch_feautred_books_use_case.dart';
import 'package:book_store/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  Bloc.observer = MyBlocObserver();

  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(create: (context) {
          return FeaturedBooksCubit(
              FetchFeautredBooksUseCase(getIt.get<HomeRepoImpl>()))
            ..fetchFeaturedBooks();
        }),
        BlocProvider<NewsetBooksCubit>(create: (context) {
          return NewsetBooksCubit(
              FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()))
            ..fetchNewsetBooks();
        }),
        BlocProvider<SearchCubitCubit>(
          create: (context) =>
              SearchCubitCubit(SearchDataUseCase(getIt.get<SearchRepoImpl>())),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
