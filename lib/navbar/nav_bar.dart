import 'package:client/navbar/components/desktop_navbar.dart';
import 'package:client/navbar/components/mobile_navbar.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  static const listNavbar = ['Home','About Us', 'Tours','Destinations','Blog','Contact Us'];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => (constraints.maxWidth > 1200)
            ? const DesktopNavbar(listNavbar: listNavbar,)
            : (constraints.maxWidth > 850 && constraints.maxWidth < 1200)
                ? const DesktopNavbar(listNavbar: listNavbar,)
                : const MobileNavbar());
  }
}
