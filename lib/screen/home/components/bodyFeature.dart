import 'package:client/screen/home/widget/image_card.dart';
import 'package:client/utils/assets.dart';
import 'package:flutter/material.dart';

class BodyFeature extends StatelessWidget {
  const BodyFeature({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(top: 80),
        width: size.width / 1.25,
        child: Column(
          children: [
            Text(
              "Featured Tours",
              style: TextStyle(
                fontFamily: 'Comforter',
                color: Color(0xFFFDC702),
                fontSize: 50.4,
              ),
            ),
            Text(
              'Most Popular Tours',
              style: TextStyle(
                fontFamily: 'AbrilFat',
                color: Color(0xFF17233F),
                fontSize: 48,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  ImageCard(
                    imageUrl: [
                      ImageAssets.popular0,
                      ImageAssets.popular1,
                      ImageAssets.popular2
                    ],
                    index: i,
                  )
              ],
            )
          ],
        ));
  }
}
