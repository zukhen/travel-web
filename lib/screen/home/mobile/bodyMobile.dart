import 'package:client/navbar/nav_bar.dart';
import 'package:client/screen/home/components/bodyHome.dart';
import 'package:flutter/material.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Navbar(),
            BodyHome(isMobile: true)
          ]),
        ));
  }
}
