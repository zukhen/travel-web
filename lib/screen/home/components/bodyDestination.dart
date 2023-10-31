import 'package:client/utils/assets.dart';
import 'package:client/utils/touris_name.dart';
import 'package:client/widget/on_hover_image.dart';
import 'package:flutter/material.dart';
class BodyDestination extends StatelessWidget {
  const BodyDestination({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 60),
      width: size.width / 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Destinations',
            style: TextStyle(
              fontFamily: 'Comforter',
              color: Color(0xFFFDC702),
              fontSize: 50.4,
            ),
          ),
          Text(
            'Choose Your Place',
            style: TextStyle(
              fontFamily: 'AbrilFat',
              color: Color(0xFF17233F),
              fontSize: 48,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for(int i=0;i<2;i++)OnHoverImage(
                imageUrl: [ImageAssets.destination0,ImageAssets.destination1],
                touristAttraction: Tourist.touristAttraction[i],
                capital: Tourist.capital[i],
                width: 2.8,
                index: i,),
            ],
          ),
          SizedBox(height: 50,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 2; i < 5; i++)
                OnHoverImage(
                imageUrl: [ImageAssets.destination2,ImageAssets.destination3,ImageAssets.destination4],
                touristAttraction: Tourist.touristAttraction[i],
                capital: Tourist.capital[i],
                width: 4.5,
                index: i-2,),
            ],
          ),

        ],

      ),
    );
  }
}

