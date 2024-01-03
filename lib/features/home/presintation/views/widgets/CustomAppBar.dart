import 'package:book_store/core/utilis/app_router.dart';
import 'package:book_store/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.Logo,
            height: 18,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KsearchView);
              },
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 28,
              )),
        ],
      ),
    );
  }
}
