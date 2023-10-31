import 'package:client/provider/mobile_provider.dart';
import 'package:client/utils/constants.dart';
import 'package:client/widget/on_hover_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  static const textStyleNavbar = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.5,
    color: Colors.white,

  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<MobileProvider>(
      builder: (context, myProvider, _) => Container(
        constraints: BoxConstraints(maxWidth: size.width),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        color: Constants.navbarColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Itinerary",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () => myProvider.setOpenNavbar(),
                  icon: myProvider.isOpenNavbar
                      ? Icon(
                          Icons.close,
                          size: 28,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.menu,
                          size: 28,
                          color: Colors.white,
                        ),
                ),
              ],
            ),
            if (myProvider.isOpenNavbar)
              Container(
                padding: EdgeInsets.only(top: 20),
                color: Constants.navbarColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Home",style: textStyleNavbar,),
                    SizedBox(height: 10,),

                    Text("About Us",style: textStyleNavbar),
                    SizedBox(height: 10,),

                    Text("Tours",style: textStyleNavbar),
                    SizedBox(height: 10,),

                    Text("Destination",style: textStyleNavbar),
                    SizedBox(height: 10,),

                    Text("Blog",style: textStyleNavbar),
                    SizedBox(height: 10,),

                    Text("Contact Us",style: textStyleNavbar),
                    SizedBox(height: 10,),
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
              ),
          ],
        ),
      ),
    );
  }
}
