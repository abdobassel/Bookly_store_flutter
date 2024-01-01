import 'package:book_store/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 220,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CustomListViewItem(),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 45),
      child: Row(
        children: [
          Image.asset(
            AssetsData.Logo,
            height: 18,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 28,
              )),
        ],
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 220,
        width: 140,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetsData.test,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
