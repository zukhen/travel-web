import 'package:client/navbar/components/mobile_navbar.dart';
import 'package:client/provider/mobile_provider.dart';
import 'package:client/provider/on_hover_text_provider.dart';
import 'package:client/screen/home/home.dart';
import 'package:client/widget/on_hover_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MobileProvider(),
          child: MobileNavbar(),
        ),
        ChangeNotifierProvider(
          create: (_) => OnHoverTextProvider(),
          child: OnHoverText(),
        ),

      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
