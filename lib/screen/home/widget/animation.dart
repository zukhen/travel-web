import 'dart:math';

import 'package:flutter/material.dart';
class RotateWidget extends StatefulWidget {
  final String imageUrl;
  const RotateWidget({super.key, required this.imageUrl});

  @override
  State<RotateWidget> createState() => _RotateWidgetState();
}

class _RotateWidgetState extends State<RotateWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 10), // Adjust the duration as needed
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.rotate(
            angle: _animationController.value * 2 * pi,
            // Rotate 360 degrees
            child: child,
          );
        },
        child: Image.asset(widget.imageUrl));
  }
}
