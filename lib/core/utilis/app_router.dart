import 'package:book_store/features/Search/presintation/views/search_view.dart';
import 'package:book_store/features/Splash/presintaion/views/SplashView/splashViewScreen.dart';
import 'package:book_store/features/home/presintation/views/book_details_view.dart';
import 'package:book_store/features/home/presintation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
  static const KsearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
    GoRoute(
        path: KBookDetailsView, builder: (context, state) => BookDetailsView()),
    GoRoute(path: KsearchView, builder: (context, state) => SearchView()),
  ]);
}
