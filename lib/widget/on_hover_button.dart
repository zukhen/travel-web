import 'dart:ui';

import 'package:client/provider/on_hover_button_provider.dart';
import 'package:client/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnHoverButton extends StatefulWidget {
  final String text;
  final Color defaultColor;
  final Color hoverColor;
  final Color borderColor;

  final Color textColor;
  final Color hoverTextColor;

  const OnHoverButton({
    super.key,
    required this.text,
    required this.defaultColor,
    required this.hoverColor,
    required this.borderColor,
    required this.textColor,
    required this.hoverTextColor,
  });

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        width: 120,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: isHovered ? widget.hoverColor : widget.defaultColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isHovered
                ? (widget.text == "Learn More"
                    ? widget.hoverTextColor
                    : widget.borderColor)
                : widget.borderColor,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Heboo',
              fontWeight: FontWeight.bold,
              color: isHovered ? widget.hoverTextColor : widget.textColor,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
// ButtonCustom(
// title: widget.title!,
// borderColor: widget.borderColor,
// titleColor: isHovered
// ? widget.hoveredColor ?? Colors.white
//     : widget.hoverColor ?? Constants.navbarColor,
//
// backgroundColor: isHovered
// ? widget.hoverColor ?? Constants.navbarColor
//     : widget.hoveredColor ?? Colors.white,
// isHaveBorder: isHovered,
// ),
// );
