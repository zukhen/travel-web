import 'package:client/screen/home/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  Future goLogin(BuildContext context) {
    return Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    goLogin(context);
    return Scaffold(
      body: Center(
          child: Image.network(
            fit: BoxFit.contain,
            height: double.infinity,
            width: double.infinity,
              'https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?resize=476%2C280&ssl=1')),
    );
  }
}
