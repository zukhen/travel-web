import 'package:client/navbar/nav_bar.dart';
import 'package:client/screen/home/components/bodyDestination.dart';
import 'package:client/screen/home/components/bodyFeature.dart';
import 'package:client/screen/home/components/bodyHome.dart';
import 'package:flutter/material.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Column(children: [
        Navbar(),
        BodyHome(
          isMobile: false,
        ),
        BodyDestination(),
        BodyFeature()
      ]),
    ));
  }
}
