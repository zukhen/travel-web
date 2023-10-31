import 'package:client/navbar/nav_bar.dart';
import 'package:client/screen/home/components/bodyHome.dart';
import 'package:client/screen/home/desktop/bodyDesktop.dart';
import 'package:client/screen/home/mobile/bodyMobile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => (constraints.maxWidth > 1200)
            ? const BodyDesktop()
            : (constraints.maxWidth > 800 && constraints.maxWidth < 1200)
            ? const BodyDesktop()
            : const BodyMobile());


  }
}
