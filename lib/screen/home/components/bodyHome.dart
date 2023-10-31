import 'dart:math';

import 'package:client/screen/home/widget/animation.dart';
import 'package:client/utils/assets.dart';
import 'package:client/utils/constants.dart';
import 'package:client/widget/on_hover_button.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  final bool isMobile;

  const BodyHome({super.key,  required this.isMobile});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.2,
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Expole your travel',
                          style: TextStyle(
                            fontFamily: 'Comforter',
                            color: Color(0xFFFDC702),
                            fontSize: 50.4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Trusted Travel\nAgency',
                          style: TextStyle(
                            fontFamily: 'AbrilFat',
                            color: Color(0xFF17233F),
                            fontSize: 68,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "I travel not to go anywhere, but to go. I travel for travel's sake the great affair is to move.",
                          style: TextStyle(
                            fontFamily: 'Heboo',
                            color: Colors.grey,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: OnHoverButton(
                                text: 'Contact Us',
                                defaultColor: Constants.navbarColor,
                                hoverColor: Colors.white,
                                borderColor: Constants.navbarColor,
                                textColor: Colors.white,
                                hoverTextColor: Constants.navbarColor,

                                  ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Flexible(
                              flex: 1,
                              child:
                              OnHoverButton(
                                text: 'Learn More',
                                defaultColor: Colors.white,
                                hoverColor: Colors.white,
                                borderColor: Colors.grey,
                                textColor: Colors.black,
                                hoverTextColor: Constants.navbarColor,
                                ),

                            ),
                          ],
                        )
                      ],
                    ),
                    if (!isMobile)
                      Positioned(
                        right: -90,
                        bottom: -10,
                        child: RotateWidget(
                          imageUrl: ImageAssets.iconShape3,
                        ),
                      ),
                    if (!isMobile)
                      Positioned(
                        right: 50,
                        top: 0,
                        child: RotateWidget(
                          imageUrl: ImageAssets.iconShape2,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              if (!isMobile)
                Flexible(
                  flex: 1,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        ImageAssets.heroBanner,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: RotateWidget(
                          imageUrl: ImageAssets.iconShape1,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          if (isMobile) SizedBox(height: 50),
          if (isMobile)
            Image.asset(
              ImageAssets.heroBanner,
            ),
        ],
      ),
    );
  }
}
