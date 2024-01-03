import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/features/Splash/presintaion/views/SplashView/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 10),
          child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Image.asset(AssetsData.Logo)),
        ),
      ),
      body: SplashViewBody(),
    );
  }
}
// 0xff100B20
