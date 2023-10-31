import 'package:client/utils/assets.dart';
import 'package:client/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final List<String> imageUrl;
  final int index;

  const ImageCard({super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(imageUrl[index]),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFCC603)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "12 Days",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white.withOpacity(0.9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (size.width / 10 < 118)
                        ? Container(
                            width: 140,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Constants.navbarColor),
                            child: Text(
                              "From \$50.00",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Constants.navbarColor),
                            child: Text(
                              "From \$50.00",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                    SizedBox(
                      width: 20,
                    ),
                    if (size.width / 10 > 118)
                      Container(
                        width: 140,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFFCC603)),
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 19,
                              ),
                            Icon(Icons.star_border,
                                color: Colors.white, size: 19),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "(2)",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      )
                  ],
                ),
                if (size.width / 10 < 118)
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFCC603)),
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++)
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 19,
                          ),
                        Icon(Icons.star_border, color: Colors.white, size: 19),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "(2)",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "A good traveler has no fixed plans and it not intent on arriving.",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kuala Lumpur, Malaysia",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
