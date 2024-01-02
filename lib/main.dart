import 'package:book_store/apiDio/apidio.dart';
import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/features/Splash/presintaion/views/SplashView/splashViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  DioHelper.init();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
