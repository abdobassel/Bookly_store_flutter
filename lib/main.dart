import 'package:book_store/apiDio/apidio.dart';
import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/api_service.dart';
import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/features/Splash/presintaion/views/SplashView/splashViewScreen.dart';
import 'package:book_store/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:book_store/features/home/domain/use_cases/fetch_feautred_books_use_case.dart';
import 'package:book_store/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presintation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:book_store/features/home/presintation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding();
  DioHelper.init();
  await Hive.initFlutter();
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    HomeLocalDataSourceImpl(),
    HomeRemoteDataSourceImpl(ApiService()),
  ));
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  runApp(const BooklyApp());
}

final getIt = GetIt.instance;

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
              FetchFeautredBooksUseCase(getIt.get<HomeRepoImpl>()));
        }),
        BlocProvider(create: (context) {
          return NewsetBooksCubit(
              FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()));
        })
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
