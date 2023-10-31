import 'package:client/utils/constants.dart';
import 'package:client/widget/on_hover_button.dart';
import 'package:client/widget/on_hover_text.dart';
import 'package:flutter/material.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key, required this.listNavbar});

  final List<String> listNavbar;

  //style
  static const textStyleNavbar = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.5,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width),
      height: 85,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      color: Constants.navbarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Itinerary",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          for (int i = 0; i < listNavbar.length; i++)
            OnHoverText(title: listNavbar[i], index: i),
        OnHoverButton(
          text: 'Booking Now',
          defaultColor: Colors.white,
          hoverColor: Constants.navbarColor,
          borderColor: Colors.white,
          textColor: Constants.navbarColor,
          hoverTextColor: Colors.white,

            ),
        ],
      ),
    );
  }
}
