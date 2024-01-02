import 'package:book_store/core/utilis/assets.dart';
import 'package:book_store/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(
                      AssetsData.test,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Hary Potter HEllo  HleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeoHleoeo',
                  style: Styles.textStyle22,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Hary Potter',
                style: Styles.textStyle16,
              ),
              Row(
                children: [
                  Text('19' r'$',
                      style: Styles.textStyle22
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
