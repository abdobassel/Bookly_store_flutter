import 'dart:async';

import 'package:book_store/constants.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/features/home/presintation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          () => HomeView(),
          transition: Transition.fade,
          duration: KTranstionDuration,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                blurRadius: 40,
                spreadRadius: 40,
                offset: Offset(10, 5))
          ]),
          child: Image.asset(
            AssetsData.Logo,
            height: 200,
            width: double.infinity,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Read Free Books :)',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
