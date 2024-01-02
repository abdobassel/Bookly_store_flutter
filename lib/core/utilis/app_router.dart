import 'package:book_store/features/Splash/presintaion/views/SplashView/splashViewScreen.dart';
import 'package:book_store/features/home/presintation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
  ]);
}
